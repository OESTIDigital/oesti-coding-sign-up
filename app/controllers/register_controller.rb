class RegisterController < ApplicationController
  layout 'login'

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(register_params)

    if @team.save
      session[:team_id] = @team.id
      redirect_to root_url, notice: I18n.t('messages.welcome', :name => @team.name)
    else
      render :new
    end
  end

  private
    def register_params
      params.require(:team).permit(:name, :login, :password, :password_confirmation, :members, :category_id)
    end
end
