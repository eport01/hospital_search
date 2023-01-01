class UsersController < ApplicationController
  def new 
  end

  def show 
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(user_params) 
    if @user.valid?
      @user.save
      session[:user_id] = @user.id 

      redirect_to user_path(@user.id)
    else
      redirect_to register_path


    end

  end

  private 
  def user_params
    params.permit(:username, :password)
  end
end