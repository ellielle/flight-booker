class Booking < ApplicationRecord
  belongs_to :booked_flight, class_name: "Flight"
  belongs_to :booking, class_name: "Passenger"
end
