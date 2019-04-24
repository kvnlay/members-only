class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:email])
      
    else

    end
  end
end
