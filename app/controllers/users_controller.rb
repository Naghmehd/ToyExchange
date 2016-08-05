class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users.to_json }
      format.html
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
