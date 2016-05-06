class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @toys = @user.toys
    @wanted_toys = @user.wants
  end
end
