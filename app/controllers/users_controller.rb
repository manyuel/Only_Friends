class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def index
    @users = User.all

    if params[:location].present?
      @users = User.where("location ILIKE ?", "%#{params[:location]}%")
    else
      @users = User.all
    end
  end
end
