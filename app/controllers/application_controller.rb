class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def correct_user
      unless current_user && current_user == @user
        redirect_to root_path, notice: "You don't own that!"
      end
    end
end
