class UsersController < ApplicationController
  def new
    attr = params.permit(:name, :email, :password, :password_confirmation )
    @user = User.new(attr)
  end

  def show
    @user = User.find(params[:id])
  end
end
