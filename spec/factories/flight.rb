FactoryBot.define do
  factory :flight do
    from_airport_id { 1 }
    to_airport_id { 2 }
    duration { 200 }
    departure { 2.days.from_now }

    trait :flight2 do
      from_airport_id { 2 }
      to_airport_id { 1 }
      duration { 190 }
      departure { 5.days.from_now }
    end

    before(:create) { create(:airport, :lga) }
    before(:create) { create(:airport, :sfo) }
  end
end