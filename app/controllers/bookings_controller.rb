class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @friend = Friend.find(params[:friend_id])
  end

  def create
    @booking = Booking.create(bookmark_params)
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    redirect_to bookings_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:friend_id, :user_id)
  end
end
