class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    if User.find(current_user)
      @locations = Location.near(params[:latitude => @user.latitude, :longitude => @user.longitude], 50, :order => :distance)
    else
      @locations = Location.all
    end
  end


  def show
    # @user = User.find(params[:id])
    @user = current_user
    @toys = @user.toys
    @wanted_toys = @user.wanted_toys
  end

  private
    def get_toy
      @toy = Toy.find(params.fetch(:id))
    end
end
