class TagsController < ApplicationController
  before_action :set_tag, only: %i[ show edit update destroy ]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to tags_path, notice: "Tag was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @tag.update(tag_params)
      redirect_to tag_url(@tag), notice: "Tag was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @tag.destroy
      redirect_to tags_path, notice: "Tag was successfully destroyed."
    else
      redirect_to tags_path, alert: "Tag could not be destroyed."
    end
  end

private
  def set_tag
    @tag = Tag.find_by(name: params[:name])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
