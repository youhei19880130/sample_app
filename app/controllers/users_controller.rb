class UsersController < ApplicationController
  def new
    attr = params.permit(:name, :email, :password, :password_confirmation )
    @user = User.new(attr)
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:users])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
