class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create

  end

  def edit

  end

  def update
    @user.user(user_params)
    if current_user == @user
      save_for_html_json(@user, "edit") { root_path }
    else
      redirect_to root_path

  end

  def destroy
    destroy_html_json(@user, users_path)
  end

private
  def get_user
    @user = User.find(params.fetch(:id))
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :zip_code)
  end
end

end
