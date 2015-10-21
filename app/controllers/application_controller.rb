class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :correct_user
  helper_method :owns?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Redirects away from routes where user isn't the right one
  def correct_user
    unless current_user && current_user == @user
      redirect_to user_path, notice: "You don't own that!"
    end
  end

  # Evaluates to false if the user isn't the right user
  def owns?
    current_user && current_user == @user
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
    end




end
