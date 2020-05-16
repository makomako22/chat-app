class MessagesController < ApplicationController
  def index
    @group = Group.find(params[:id])
    @messeages = @group.messages
  end

def create
  @message = message.new(message_params)
  if @message.save
    redirect_to group_messages_path(@message.group)
  else
    render :index
end

end
