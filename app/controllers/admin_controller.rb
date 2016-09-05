class AdminController < ApplicationController

  layout 'admin'
  before_filter :authorize

	private
	
    def login_page?
      route_for? admin_login_path
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user

    def authorize
      redirect_to admin_login_path unless login_page? or current_user
    end

end