class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
    @tagged_in_photos = Tag.where(:user_id => @user )
  end

end
