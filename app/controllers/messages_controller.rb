class MessagesController < ApplicationController
  def index
    @messages = Message.all 

    render 'index.json.jbuilder'
  end

  def create
    @message = Message.new(
                            user_id: params[:user_id],
                            conversation_id: params[:conversation_id],
                            body: params[:body]
                          )

    if @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    render json: {message: "Message removed"}
  end
end
