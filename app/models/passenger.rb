class Passenger < ApplicationRecord
  belongs_to :booking
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  before_save :downcase_email

  private

  def downcase_email
    email.downcase!
  end
end
