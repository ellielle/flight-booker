class FlightsController < ApplicationController
  def new
  end

  def index
    @airports = Airport.all.map { |airport| "#{airport.name} - #{airport.code}"}.sort
    @flight_dates = Flight.all.map(&:flight_date_format).sort
  end

  private

  def flight_params

  end
end
