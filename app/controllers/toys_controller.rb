class ToysController < ApplicationController

  def index
    @toys = Toy.all.order('created_at DESC')
    if params[:search].present?
      @toys = User.near(params[:search], 50, :order => :distance)
    else
      @toys = Toy.all.where("id != ?", current_user.id)
    end
    respond_to do |format|
      format.html { }
      format.json { render json: @toys }
    end
  end

  # def toy_local
  #   @toys = User.near(current_user).joins(:toys).flat_map { |x| x.toys }
  # end

  def show
    @toy = get_toy
    @conversation = Conversation.new
  end

  def new
    @toys = Toy.new
  end

  def create
    begin
      @toy = current_user.toys.build(toy_params)
    rescue Aws::S3::Errors::PermanentRedirect
      binding.pry
    end
    respond_to do |format|
       if @toy.save
         format.html { redirect_to user_path(current_user), notice: 'Toy was successfully created.' }
         format.js   { }
         format.json { render :show, status: :created, location: @toy }
       else
         format.html { render :new_toy_path }
         format.json { render json: @toy.errors, status: :unprocessable_entity}
       end
     end
  end

  def edit
    @toy = get_toy
  end

  def update
    @toy = get_toy

    if @toy.update(toy_params)
      redirect_to @toy_path
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

      redirect_to :back
    else
      redirect_to :back
    end
  end

private
  def get_toy
    @toy = Toy.find(params.fetch(:id))
  end

  def toy_params
    params.require(:toy).permit(:user_id, :name, :brand, :category, :description, :condition, :age_group, :picture_url, :profile_image)
  end
end
