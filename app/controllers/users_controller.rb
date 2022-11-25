class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def index
    @users = User.all

    if params[:location].present?
      @users = User.where(location: params[:location], role: 'Friend')
    else
      @users = User.where(role: 'Friend')
    end
  end
end
