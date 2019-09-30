class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @flight_codes = Airport.all.map(&:code).sort
  end
end
