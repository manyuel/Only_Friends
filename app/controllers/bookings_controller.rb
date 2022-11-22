class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

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
    params.require(:booking).permit(:date)
  end
end
