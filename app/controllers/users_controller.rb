class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def index
    if current_user.nil?
      @users = User.all
    else
      @users = User.all - current_user
    end
  end
end
