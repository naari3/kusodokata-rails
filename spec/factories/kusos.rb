# frozen_string_literal: true

FactoryBot.define do
  factory :kuso do
    unique_id { SecureRandom.urlsafe_base64(20) }
    sequence(:body, FFaker::LoremJA.sentence)
  end
end
