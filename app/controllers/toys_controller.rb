class ToysController < ApplicationController

  def index
    @toys = Toy.all.order('created_at DESC')
    respond_to do |format|
      format.html { }
      format.json { render json: @toys }
    end
  end

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
    params.require(:toy).permit(:name, :brand, :category, :description, :condition, :age_group, :picture_url, :profile_image)
  end
end
