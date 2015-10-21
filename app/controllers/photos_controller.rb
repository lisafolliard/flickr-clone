class PhotosController < ApplicationController
  before_action :set_photo, only: [ :show, :edit, :destroy ]


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
    if @photo.save
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
