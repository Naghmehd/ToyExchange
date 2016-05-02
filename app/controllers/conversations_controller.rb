class ConversationsController < ApplicationController
  def create
    @conversation = user.conversations.build(conversation_params)
    save_for_html_json(@conversation, "new") { redirect_to_ }
  end

  def update

  end

  def destroy

  end

  private

  def get_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.require(:conversation).permit(:message, :user_id, :toy_id)
  end
end
