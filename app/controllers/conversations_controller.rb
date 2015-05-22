class ConversationsController < ApplicationController
  
 # before_filter :authenticate_user!
  
  def index
    if current_user
      @conversations = Conversation.where("conversations.user_id =?", current_user.id)
    elsif current_firmuser
      @conversations = Conversation.where("conversations.firmuser_id =?", current_firmuser.id)
    end
  end

  def create
    if Conversation.between(params[:user_id],params[:firmuser_id]).present?
      @conversation = Conversation.between(params[:user_id],params[:firmuser_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversation_messages_path(@conversation)
  end
 
  private
  def conversation_params
    params.permit(:user_id, :firmuser_id, :name)
  end
 
  
end