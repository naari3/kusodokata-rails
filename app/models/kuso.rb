# frozen_string_literal: true

class Kuso < ApplicationRecord
  after_initialize :kusodokata_parsing
  after_initialize :set_sentence, :set_unique_id, if: :new_record?

  validates :unique_id, presence: true
  validates :body, presence: true, uniqueness: true

  private

  def set_unique_id
    update(unique_id: SecureRandom.urlsafe_base64(20)) if unique_id.blank?
  end

  def set_sentence
    update(body: kusodokata_sentence)
  end

  def kusodokata_parsing
    @markov ||= Markov.new
    tokenized_kusodokata.each { |kusodokata| kusodokata.each { |kusod| @markov.add_with_first(*kusod) } }
  end

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
