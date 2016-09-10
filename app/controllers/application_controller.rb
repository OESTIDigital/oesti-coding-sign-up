class ApplicationController < BaseController
  before_filter :authorize

  private
    def login_page?
      route_for? login_path
    end
    def register_page?
      route_for? register_path
    end

    def current_team
      @current_team ||= Team.find(session[:team_id]) if session[:team_id]
    end
    helper_method :current_team

    def authorize
      redirect_to login_path unless login_page? or register_page? or current_team
    end
end
