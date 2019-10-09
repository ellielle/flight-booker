FactoryBot.define do
  factory :lga, class: "Airport" do
    name { "LaGuardia Airport" }
    code { "LGA" }
  end

  factory :sfo, class: "Airport" do
    name { "San Francisco Intl Airport" }
    code { "SFO" }
  end
end