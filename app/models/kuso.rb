# frozen_string_literal: true

class Kuso < ApplicationRecord
  has_secure_token :unique_id

  def sentence
    kusodokata_sentence.strip
  end

  private

  def kusodokata_sentence
    ''
  end

  def self.kusodokata_files
    Dir.glob(Rails.root.join("app", "texts", "*")).map { |f| File.open(f) }
  end

  def self.kusodokata_texts
    kusodokata_files.map(&:read)
  end

  def self.tokenized_kusodokata
    @natto ||= Natto::MeCab.new
    @tokenized_kusodokata ||= kusodokata_files.map do |file|
      textlines = []
      file.each_line do |n|
        textlines << @natto.enum_parse(n).map(&:surface)
      end
      textlines
    end
  end

  def self.kusodokata_parsing
    @markov ||= Markov.new
    tokenized_kusodokata.each { |kusodokata| kusodokata.each { |kusod| @markov.add_with_first(*kusod) } }
  end
end
