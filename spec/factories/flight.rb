FactoryBot.define do
  factory :flight do
    from_airport_id { 1 }
    to_airport_id { 2 }
    duration { 200 }
    departure { Time.now + 3 }

    trait :flight2 do
      from_airport_id { 2 }
      to_airport_id { 1 }
      duration { 190 }
      departure { Time.now + 5 }
    end

    before(:create) { create(:airport, :lga) }
    before(:create) { create(:airport, :sfo) }
  end
end