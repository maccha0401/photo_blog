class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # ■ログイン名でログイン
    @user = User.find_by(login_name: params[:session][:login_name])
    # ■ログインできた場合、ブログの一覧へ。
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      # ■前のページがなければroot へ、あれば前のページへ。
      if session[:previous_url].nil?
        redirect_to :root
      else
        redirect_to session[:previous_url]
        session.delete(:previous_url)
      end
    # ■ログインできなかった場合、ログイン画面へ。
    else
      flash.now[:danger] = "ログインに失敗しました。"
      render "new"
    end
  end

  def destroy
    # ■ログアウト
    session.delete(:user_id)
    flash[:notice] = "Logged Out."
    redirect_to :root
  end
end
