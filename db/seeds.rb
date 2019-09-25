Airport.delete_all
Flight.delete_all


# Create Airports
airport1 = Airport.create!(name: "LaGuardia Airport", code: "LGA")
airport2 = Airport.create!(name: "John F. Kennedy International Airport", code: "JFK")
airport3 = Airport.create!(name: "San Francisco International Airport", code: "SFO")

# Create Flights
flight1 = Flight.create!(from_airport_id: airport1.id, to_airport_id: airport3.id,
                         departure: 3.hours.ago, duration: 293)
flight2 = Flight.create!(from_airport_id: airport2.id, to_airport_id: airport3.id,
                         departure: 2.hours.ago, duration: 300)
flight3 = Flight.create!(from_airport_id: airport3.id, to_airport_id: airport1.id,
                         departure: 2.hours.from_now, duration: 260)