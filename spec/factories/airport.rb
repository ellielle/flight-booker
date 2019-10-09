FactoryBot.define do
  factory :airport do
    name { "Airport" }
    code { "ABC" }

    trait :lga do
      name { "LaGuardia Airport" }
      code { "LGA" }
    end

    trait :sfo do
      name { "San Francisco Intl Airport" }
      code { "SFO "}
    end
  end
end