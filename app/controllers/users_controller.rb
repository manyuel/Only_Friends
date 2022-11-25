class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def index
    if params[:location].present?
      @users = User.where("location ILIKE ?", "%#{params[:location]}%").select { |user| user.role == "Friend" }
    else
      @users = User.where(role: 'Friend')
    end
  end
end
