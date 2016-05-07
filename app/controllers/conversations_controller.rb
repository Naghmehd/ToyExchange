class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.new
  end

  def new
    @conversation = Conversation.new
  end

  def create

    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      flash[:notice] = "conversation created"
      redirect_to root_path
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


end
