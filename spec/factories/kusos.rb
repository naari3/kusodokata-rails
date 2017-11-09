FactoryBot.define do
  factory :kuso do
    unique_id { FFaker::LoremJA.sentence } 
    sentence { FFaker::LoremJA.sentence }
  end
end
