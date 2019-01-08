class UsersController < ApplicationController

  before_action :guest, only:[:new,:create]
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to new_user_path, success: "User created"
    else
      render :new, danger: "Oops! something went wrong"
    end
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end
