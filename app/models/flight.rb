class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: :from_airport_id, class_name: "Airport"
  belongs_to :to_airport, foreign_key: :to_airport_id, class_name: "Airport"
  has_many :bookings, foreign_key: :booked_flight_id
  has_many :passengers, through: :bookings, source: :passenger_id
  scope :sorted_dates, -> { where("departure > ?", Time.now).order(:departure) }
end
