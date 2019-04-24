class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:email])
      log_in user
      remember user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
