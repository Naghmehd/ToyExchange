class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    if params[:search].present?
    @user = User.near(params[:search], 50, :order => :distance)
    else
      @user = user.all
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
