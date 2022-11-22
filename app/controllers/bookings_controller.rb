class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

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

  def show
    @booking = User.find(params[:id])
  end

  def destroy
    @booking = User.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def confirm
    @booking.update(confirmed?: true)
    redirect_to bookings_index_path, status: :see_other
  end

  def reject
    @booking.update(confirmed?: nil)
    redirect_to bookings_index_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:friend_id, :user_id)
  end
end
