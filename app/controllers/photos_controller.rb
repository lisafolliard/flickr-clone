class PhotosController < ApplicationController
  before_action :set_photo, only: [ :show, :edit, :destroy ]
  before_action :correct_user, only: [ :edit, :update, :destroy ]

  def index
    @photos = Photo.order(created_at: :desc)
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      notice: "Successfully added photo"
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:caption, :image)
    end
end
