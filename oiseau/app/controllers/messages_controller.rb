class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]
  before_action :set_tag, only: %i[ new create show edit update destroy ]

  def index
    @messages = Message.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @message = Message.new
  end

  def edit
    @tag = @message.tag
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to tag_message_path(@tag, @message), notice: "Message was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @message.update(message_params)
      redirect_to tag_messages_path(tag_name: @message.tag.name), notice: "Message was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @message.destroy
      redirect_to tag_messages_path(tag_name: @message.tag.name), notice: "Message was destroyed."
    else
      redirect_to tag_messages_path(tag_name: @message.tag.name), alert: "Message could not be destroyed."
    end
  end

private
  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:author_name, :content, :tag_id)
  end

  def set_tag
    @tag = Tag.find_by(name: params[:name])
  end
end
