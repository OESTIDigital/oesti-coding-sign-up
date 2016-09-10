class BaseController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :route_for?, :current_config

  def route_for?(path)
    request.original_url.include? path
  end

  def current_config
    Config.find(1)
  end
end
