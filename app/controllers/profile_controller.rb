class ProfileController < ApplicationController
  before_action :set_team

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to profile_url, notice: I18n.t('messages.update_success', :model => Team.model_name.human)
    else
      render :edit
    end
  end

  private
    def set_team
      @team = current_team
    end

    def team_params
      params.require(:team).permit(:name, :members, :login, :password, :password_confirmation)
    end
end
