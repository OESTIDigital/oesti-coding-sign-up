class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :route_for?

  def route_for?(path)
  	request.original_url.include? path
  end
end
