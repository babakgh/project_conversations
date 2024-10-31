class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user
      session[:user_id] = user.id
      redirect_to projects_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid username'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out successfully'
  end
end
