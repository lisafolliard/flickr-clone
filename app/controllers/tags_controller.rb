class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def tag_params
      params.require(:tag).permit(:photo_id, :user_id)
    end
end
