class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    is_auth = user.authenticate(params[:session][:password])
    if user && is_auth
      sign_in user
      flash[:notice] = "サインインしました"
      redirect_to root_path
    else
      flash.now[:danger] = "サインインに失敗しました"
      render "sessions/new"
    end
  end

  def destroy
    signed_out
    flash[:notice] = "サインアウトしました"
    redirect_to root_path
  end
end
