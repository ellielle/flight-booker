FactoryBot.define do
  factory :passenger do
    first_name { "person" }
    last_name { "man" }
    email { "email@example.com" }
    booking_id { 1 }
  end
end
