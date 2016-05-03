class ToysController < ApplicationController
    def index
      @toys = Toy.all
    end

    def show
    end

    def new
      @toys = Toy.new
    end

    def create

    end

    def edit

    end

    def update
      if current_user == @user
        save_for_html_json(@toy, "edit") { root_path }
      else
        redirect_to root_path
      end
    end

    def destroy
      destroy_html_json(@toy, toys_path)
    end

  private
    def get_toy
      @user = User.find(params.fetch(:id))
    end

    def toy_params
      params.require(:toy).permit(:name, :brand, :category, :description, :condition, :age_group, :picture_url)
    end
  end
