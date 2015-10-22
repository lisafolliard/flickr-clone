class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
  end

  def create
    @photo = Photo.find(params[:tag][:photo_id])
    @user  = User.find(params[:tag][:user_id])
    @tag = Tag.new
    @tag.tagged_photo = @photo
    @tag.tagged_user = @user
    respond_to do |format|
      if @tag.save
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to :back

  end

  private

    def tag_params
      params.require(:tag).permit(:photo_id, :user_id)
    end
end

# app/controllers/users_controller.rb
# ......
# def create
#   @user = User.new(params[:user])
#
#   respond_to do |format|
#     if @user.save
#       format.html { redirect_to @user, notice: 'User was successfully created.' }
#       format.js   {}
#       format.json { render json: @user, status: :created, location: @user }
#     else
#       format.html { render action: "new" }
#       format.json { render json: @user.errors, status: :unprocessable_entity }
#     end
#   end
# end
