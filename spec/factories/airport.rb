FactoryBot.define do
  factory :lga do
    name { "LaGuardia Airport" }
    code { "LGA" }
  end

  factory :sfo do
    name { "San Francisco Intl Airport" }
    code { "SFO" }
  end
end