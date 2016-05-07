class ConversationsController < ApplicationController

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.new
  end

  def new
    @conversation = Conversation.new
  end

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id])
   .present?
    @conversation = Conversation.between(params[:sender_id],
     params[:recipient_id]).first
   else
    @conversation = Conversation.create!(conversation_params)
   end
   redirect_to conversation_messages_path(@conversation)
  end

  private

  def get_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit(:body, :user_id, :toy_id,:sender_id, :recipient_id)
  end


end
