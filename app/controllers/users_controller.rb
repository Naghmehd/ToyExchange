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
    if current_user != @user && !current_user.admin?
      flash[:danger] = "You cannot access another user's edit page!"
      redirect_to root_path
    end
  end

  def update
    @user.assign_attributes(user_params)
    if current_user == @user || current_user.admin == true
      save_for_html_json(@user, "edit") { root_path }
    else
      redirect_to root_path
    end
  end

  def destroy
    destroy_html_json(@user, users_path)
  end

  def admin_dashboard
    @user = current_user
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
