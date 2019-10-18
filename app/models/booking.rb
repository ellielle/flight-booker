class Booking < ApplicationRecord
  belongs_to :passenger, class_name: "Flight"
  belongs_to :scheduled_flight, class_name: "Passenger"
  accepts_nested_attributes_for :passenger
end
