FactoryBot.define do
  factory :flight1 do
    from_airport_id { 1 }
    to_airport_id { 2 }
    duration { 200 }
    departure { Time.now + 3 }
  end

  factory :flight2 do
    from_airport_id { 2 }
    to_airport_id { 1 }
    duration { 190 }
    departure { Time.now + 5 }
  end
end