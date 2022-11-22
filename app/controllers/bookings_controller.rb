class BookingsController < ApplicationController

  def new
    # @booking = Booking.new
    # @friend = Friend.find(params[:friend_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @friend = User.find(params[:user_id])
    @booking.friend = @friend
    @booking.costumer = current_user
    if @booking.save!
      redirect_to bookings_path
    else
      render 'users/show', status: :unprocessable_entity

    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
