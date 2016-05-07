class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.new
  end

  def new
    @conversation = Conversation.new
  end

  def create
    @toy = Toy.find(toy_params)
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      flash[:notice] = "conversation created"
      redirect_to @toy
    else
      render :new
    end
  end

  private

  def get_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit(:body, :user_id, :toy_id)
  end

  def toy_params
    params.require(:toy).permit(:toy_id, :name, :brand, :category, :description, :condition, :age_group, :picture_url, :profile_image)
  end
end
