class ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations
  end

  def show
    @conversation = get_conversation
  end

  def new
    @conversation = Conversation.new
  end

  def create
    if Conversation.between(params[:conversation][:sender_id], params[:conversation][:recipient_id]).present?
      @conversation = Conversation.between(params[:conversation][:sender_id], params[:conversation][:recipient_id]).first
    else
      @conversation = Conversation.create(conversation_params)
    end

    redirect_to conversation_path(@conversation)
  end

  private

  def get_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit(:body, :user_id, :toy_id, :sender_id, :recipient_id)
  end


end
