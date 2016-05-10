class UsersController < ApplicationController
  before_filter :authenticate_user!

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
