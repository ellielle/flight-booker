require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  def setup
    @flight = Flight.new(from_airport_id: 3, to_airport_id: 5, departure: DateTime.now + 3,
                         duration: 300)
  end

  test "should be a valid flight" do
    @flight.valid?
  end
end
