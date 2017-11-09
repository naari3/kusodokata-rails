# frozen_string_literal: true

FactoryBot.define do
  factory :kuso do
    unique_id { FFaker::LoremJA.sentence }
    body { FFaker::LoremJA.sentence }
  end
end
