class UploadController < ApplicationController
  def upload
    current_team.files = params[:team][:files]

    if current_team.save
      redirect_to root_url, notice: I18n.t('messages.upload_success')
    else
      redirect_to root_url, alert: I18n.t('messages.upload_error')
    end
  end
end
