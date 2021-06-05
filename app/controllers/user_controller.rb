class UserController < ApplicationController

  def edit
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root
    else
      render :new
    end
  end

  def update
  end

  def index
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
