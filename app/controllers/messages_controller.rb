class MessagesController < ApplicationController
  #before_filter :authenticate_user!
  before_action do
   @conversation = Conversation.find(params[:conversation_id])
   if current_user
     @profile = current_user.profile
   else
     @firm = current_firmuser.firm
   end
  end

  def index
    @messages = @conversation.messages
    @messages.each do |message|
      if current_user
        #userが読んだかどうか
        message.readflag = true
      elsif current_firmuser
        #firmuserが読んだかどうか
        message.firmuser_readflag = true 
      end
      message.save
    end
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    

    respond_to do |format|
      if @message.save
        format.html { redirect_to conversation_messages_path(@conversation), notice: 'Firm was successfully created.' }
        format.json { render :show, status: :created, location: @firm }
      else
        format.html { redirect_to conversation_messages_path, notice: 'error!' }
        format.json { render json: @firm.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private
 
  def message_params
    params.require(:message).permit(:content, :conversation_id, :creater_flag, :readflag, :firmuser_readflag)
  end
end