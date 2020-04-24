# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)
    if @user.save
      redirect_to root_path
    else
      render new
    end
  end

  private

  def create_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
