# frozen_string_literal: true

FactoryBot.define do
  factory :kuso do
    sequence(:body, FFaker::LoremJA.sentence)
  end
end
