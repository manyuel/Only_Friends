class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy confirm reject]

  def index
    if current_user.role == 'Costumer'
      @bookings = Booking.where(costumer_id: current_user.id)
      @confirmed_bookings = Booking.where(costumer_id: current_user.id, confirmed?: true)
      @pending_bookings = Booking.where(costumer_id: current_user.id, confirmed?: false)
    elsif current_user.role == 'Friend'
      @bookings = Booking.where(friend_id: current_user.id)
      @confirmed_bookings = Booking.where(friend_id: current_user.id, confirmed?: true)
      @pending_bookings = Booking.where(friend_id: current_user.id, confirmed?: false)
    end
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
      redirect_to confirmation_path(@booking)
    else
      render 'users/show', status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def confirm
    @booking.update(confirmed?: true)
    redirect_to bookings_path, status: :see_other
  end

  def reject
    @booking.update(confirmed?: nil)
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
