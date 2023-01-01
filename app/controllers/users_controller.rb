class UsersController < ApplicationController
  def new 
  end

  def show 
    @user = User.find(params[:id])
  end

  def create 
    @user = User.create(user_params) 

    redirect_to user_path(@user)
  end

  private 
  def user_params
    params.permit(:username, :password)
  end
end