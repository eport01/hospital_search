class SessionsController < ApplicationController
  def new 

  end

  def create 
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      log_in user 
      redirect_to user_path(user)
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy 

  end
end