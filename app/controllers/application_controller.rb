class ApplicationController < ActionController::Base
  protect_from_forgery 
  include sessions_helper

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in'
      redirect_to login_path
    end
  end
end
