class Passenger < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  before_save :downcase_email
  has_many :bookings, foreign_key: :booking_id
  has_many :scheduled_flights, through: :bookings, source: :scheduled_flight

  private

  def downcase_email
    email.downcase!
  end
end
