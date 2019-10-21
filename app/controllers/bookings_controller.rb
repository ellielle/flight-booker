class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.where(id: params[:results][:chosen_flight]).first
    params[:results][:num_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    if params[:commit] == "Submit Information"
      @flight = Flight.find_by(id: params[:flight_number])
      @booking = @flight.bookings.build(booking_params)
      if @booking&.save
        flash[:success] = "Flight booked!"
        redirect_to booking_path(@booking)
      else
        render :new
      end
    elsif params[:commit] == "Change Details"
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find_by(id: params[:id])
  end

  def search
    @email = params[:search_booking].downcase unless params[:search_booking].nil?
    @booked_flight = Booking.where(id: Passenger.where("email = ?", @email)).first
    if !@booked_flight.nil?
      redirect_to booking_path(@booked_flight)
    else
      flash[:danger] = "There are no flights booked under this email."
      redirect_to request.referrer
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_number,
                                    passengers_attributes: [:first_name, :last_name, :email])
  end

  def create_passenger

  end
end
