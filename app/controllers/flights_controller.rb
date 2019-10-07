class FlightsController < ApplicationController
  def new
  end

  def index
    if !params[:flight].nil?
      @from_airport = Airport.where(code: params[:flight][:from_airport]).first
      @to_airport = Airport.where(code: params[:flight][:to_airport]).first
      if params[:flight][:any_date] == "1"
        @found_flights = flight_any_date
      else
        @depart = params[:flight][:date].to_date
        @found_flights = flight_with_date
      end
      if @from_airport == @to_airport
        flash.now[:danger] = "You cannot select the same airport."
      end
    else
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:from_airport, :to_airport, :passengers, :date)
  end

  def flight_with_date
    Flight.where("from_airport_id = ? AND to_airport_id = ? AND departure BETWEEN ? AND ?",
                 @from_airport.id, @to_airport.id, @depart.beginning_of_day, @depart.end_of_day).all
  end

  def flight_any_date
    Flight.where("from_airport_id = ? AND to_airport_id = ?", @from_airport.id, @to_airport.id)
  end
end
