class Admin::TeamsController < AdminController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to [:admin, @team], notice: I18n.t('messages.create_success', :model => Team.model_name.human)
    else
      render :new
    end
  end

  def update
    if @team.update(team_params)
      redirect_to [:admin, @team], notice: I18n.t('messages.update_success', :model => Team.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to admin_teams_url, notice: I18n.t('messages.destroy_success', :model => Team.model_name.human)
  end

  private
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :members)
    end
end
