# frozen_string_literal: true

FactoryBot.define do
  factory :kuso do
    body { FFaker::LoremJA.paragraph }
  end
end
