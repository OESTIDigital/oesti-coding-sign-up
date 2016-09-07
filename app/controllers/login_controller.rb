class LoginController < ApplicationController
  layout 'login'

  def new
    @team = Team.new()
  end

  def create
    team = Team.find_by_login(login_params[:login])

    if team && team.authenticate(login_params[:password])
      session[:team_id] = team.id
      redirect_to root_url, notice: I18n.t('messages.login_success')
    else
      redirect_to login_path, alert: I18n.t('messages.login_error')
    end
  end

  def destroy
    session[:team_id] = nil
    redirect_to login_path, notice: I18n.t('messages.logout_success')
  end

  private
    def login_params
      params.require(:team).permit(:login, :password)
    end
end
