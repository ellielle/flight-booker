class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.where(id: params[:results][:chosen_flight])
    @passengers = params[:results][:num_passengers]
  end

  def create

  end

  def show

  end

  private

  def booking_params

  end
end
