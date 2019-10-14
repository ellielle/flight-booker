class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: :from_airport_id, class_name: "Airport"
  belongs_to :to_airport, foreign_key: :to_airport_id, class_name: "Airport"
  scope :sorted_dates, -> { where("departure > ?", Time.now).order(:departure) }
end
