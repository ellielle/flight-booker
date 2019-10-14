class Booking < ApplicationRecord
  belongs_to :passenger, class_name: "Flight"
  belongs_to :scheduled_flight, class_name: "Passenger"
end
