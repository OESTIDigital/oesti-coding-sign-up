class Admin::LoginController < AdminController
  layout 'login'

	def new
		@user = User.new()
	end

  def create
    user = User.find_by_email(login_params[:email])

    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to admin_root_url, notice: I18n.t('messages.login_success')
    else
      redirect_to admin_login_path, alert: I18n.t('messages.login_error')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_login_path, notice: I18n.t('messages.logout_success')
  end

  private
    def login_params
      params.require(:user).permit(:email, :password)
    end
end
