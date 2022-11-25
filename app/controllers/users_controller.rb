class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def index
    @users = User.all

    if params[:query].present?
      @users = User.where(location: params[:location])
    else
      @movies = User.all
    end
  end
end
