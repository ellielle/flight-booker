class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.where(id: params[:results][:chosen_flight]).first
    params[:results][:num_passengers].to_i.times { @booking.passengers.build }
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
    params.require(:booking).permit(:flight_number, passengers_attributes: [:first_name, :last_name,
                                                                           :email])
  end

  def create_passenger

  end
end
