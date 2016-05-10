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
    @conversation = Conversation.find_or_create_by(conversation_params)
    if @conversation.present? && @conversation.valid?
      Wish.find_or_create_by(user_id: current_user.id, toy_id: @conversation.toy.id)
      redirect_to conversation_messages_path(@conversation)
    else
      flash[:alert] = @conversation.errors
      render :new
    end
  end

  private

  def get_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit( :user_id, :toy_id, :sender_id, :recipient_id)
  end


end
