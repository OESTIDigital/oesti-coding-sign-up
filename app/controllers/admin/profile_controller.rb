class Admin::ProfileController < AdminController
  before_action :set_user

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_profile_url, notice: I18n.t('messages.update_success', :model => User.model_name.human)
    else
      render :edit 
    end
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end