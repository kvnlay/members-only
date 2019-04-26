# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def logged_in_user
    flash[:danger] = 'Please log in' unless logged_in?
    redirect_to login_path unless logged_in?
  end
end
