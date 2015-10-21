class StaticPagesController < ApplicationController
  def home
    @photos = Photo.order(created_at: :desc)
  end

  def about
  end
end
