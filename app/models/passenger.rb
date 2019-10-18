class Passenger < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  before_save :downcase_email
  has_many :bookings
  has_many :flights, through: :bookings

  private

  def downcase_email
    email.downcase!
  end

  # TODO remember to downcase any searches for email
end
