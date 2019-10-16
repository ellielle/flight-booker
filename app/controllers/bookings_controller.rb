class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.where(id: params[:results][:chosen_flight]).first
    @passengers = params[:results][:num_passengers]
  end

  def create
    if params[:commit] == "Submit Information"

    elsif params[:commit] == "Change Details"
      redirect_to root_path
    end
  end

  def show

  end

  private

  def booking_params

  end
end
