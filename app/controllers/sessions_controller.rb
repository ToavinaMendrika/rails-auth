class SessionsController < ApplicationController

  before_action :guest, only: [:new, :create]
  skip_before_action :authorize, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by email: params[:login][:email].downcase
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      redirect_to home_path
    else
      flash.now.alert = "Incorrect email or password, try again."
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to :root
  end

end
