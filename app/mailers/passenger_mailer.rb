class PassengerMailer < ApplicationMailer
  def ticket_email(passenger)
    @booking = params[:booking]
    @passenger = passenger
    @name = "#{@passenger.first_name} #{@passenger.last_name}"
    mail(to: @passenger.email,
         subject: "Airline Ticket")
  end
end
