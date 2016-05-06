class ToysController < ApplicationController
    def index
      @toys = Toy.all
    end

    def show
      @toy = Toy.find(params[:id])
      @conversation = Conversation.new
    end

    def new
      @toys = Toy.new
    end

    def create
      @toy = Toy.new(toy_params)
      @toy.user = current_user

      if @toy.save
        redirect_to user_path
      else
        render new_toy_path
      end
    end

    def edit
      @toy = get_toy
    end

    def update
      @toy = get_toy

      if @toy.update(toy_params)
        redirect_to @toys_path
      else
        render :edit
      end
    end

    def publish
      @toy = get_toy
      @toy.published = true
      @toy.save!

      flash[:notice] = "List the Toy!"
      redirect_to :back
    end

    def destroy
      @toy = get_toy

      if @toy.destroy
        redirect_to user_path
      else
        redirect_to :back
      end
    end

  private
    def get_toy
      @user = User.find(params.fetch(:id))
    end

    def toy_params
      params.require(:toy).permit(:name, :brand, :category, :description, :condition, :age_group, :picture_url, :profile_image)
    end
  end
