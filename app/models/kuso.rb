# frozen_string_literal: true

class Kuso < ApplicationRecord
  has_secure_token :unique_id

  def sentence
    ''
  end
end
