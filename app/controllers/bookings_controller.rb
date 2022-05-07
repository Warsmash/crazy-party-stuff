class BookingsController < ApplicationController
  skip_after_action :verify_authorized

  def create
    @booking = Booking.new(booking_params)
    @booking.attraction = Attraction.find(params[:attraction_id])
    @booking.user = current_user
    @booking.save
    redirect_to(user_bookings_path)
    # vers "mes réservations user_bookings"
  end

  def user_bookings
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
