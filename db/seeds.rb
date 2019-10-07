Airport.delete_all
Flight.delete_all

def self.create_flight(from_airport, to_airport)
  Flight.create!(from_airport_id: from_airport.id, to_airport_id: to_airport.id,
                 departure: Faker::Time.between_dates(from: DateTime.now + 2, to: DateTime.now + 20),
                 duration: rand(345..680))
end

# Create Airports
airport1 = Airport.create!(name: "LaGuardia Airport", code: "LGA")
airport2 = Airport.create!(name: "John F. Kennedy International Airport", code: "JFK")
airport3 = Airport.create!(name: "San Francisco International Airport", code: "SFO")
airport4 = Airport.create!(name: "Heathrow", code: "LHR")
airport5 = Airport.create!(name: "Gatwick", code: "LGW")
airport6 = Airport.create!(name: "Los Angeles International", code: "LAX")

# Populate Flights
flight_arr = [airport1, airport2, airport3, airport4, airport5, airport6]
1..50.times do
  from_airport = flight_arr[rand(0..5)]
  to_airport = flight_arr[rand(0..5)]
  redo if from_airport == to_airport
  create_flight(from_airport, to_airport)
end
