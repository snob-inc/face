module SessionsHelper

  # サインイン時に取得したuser_idをsessionに入れる
  def sign_in(user)
    session[:user_id] = user.id
  end

  # 現在のログインユーザーを取得
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # ログイン中の場合trueを返す
  def signed_in?
    !current_user.nil?
  end

  def signed_out
    session.delete(:user_id)
    @current_user = nil
  end
end
