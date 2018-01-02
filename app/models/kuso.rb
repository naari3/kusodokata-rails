# frozen_string_literal: true

class Kuso < ApplicationRecord
  has_secure_token :unique_id
  after_initialize :kusodokata_parsing
  after_initialize :assign_sentence, if: :new_record?

  def assign_sentence
    update(body: kusodokata_sentence)
  end

  def kusodokata_parsing
    @markov ||= Markov.new
    tokenized_kusodokata.each { |kusodokata| kusodokata.each { |kusod| @markov.add_with_first(*kusod) } }
  end

  private

  def kusodokata_sentence
    @markov.generate_from_first.join
  end

  def kusodokata_files
    Dir.glob(Rails.root.join('app', 'texts', '*')).map { |f| File.open(f) }
  end

  def kusodokata_texts
    kusodokata_files.map(&:read)
  end

  def filtering(text)
    text.gsub(%r{[\(（「『【≪\)）」』】≫]}, '')
  end

  def tokenized_kusodokata
    Rails.cache.fetch('tokenized_kusodokata') do
      @natto ||= Natto::MeCab.new
      @tokenized_kusodokata ||= kusodokata_files.map do |file|
        textlines = []
        file.each_line do |n|
          textlines << @natto.enum_parse(filtering(n)).map(&:surface)
        end
        textlines
      end
    end
  end
end
