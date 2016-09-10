class Admin::ConfigController < AdminController
  before_action :set_config, only: [:edit, :update]

  def edit
  end

  def update
    if @config.update(config_params)
      redirect_to admin_config_url, notice: I18n.t('messages.update_success', :model => Config.model_name.human)
    else
      render :edit
    end
  end

  private
    def set_config
      @config = current_config
    end

    def config_params
      params.require(:config).permit(:start_time, :end_time)
    end
end
