class SessionsController < ApplicationController
  def new; end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:notice] = "サインインしました"
      redirect_to root_path
    else
      flash.now[:danger] = "サインインに失敗しました"
      render :new
    end
  end

  def destroy
    signed_out
    flash[:notice] = "サインアウトしました"
    redirect_to root_path
  end
end
