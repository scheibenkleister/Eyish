# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  protected
  def check_admin
    if not current_user.nil? and current_user.login == 'admin'
      return true
    else
      flash[:error]= "You are not allowed to add a new user."
      redirect_to :controller => 'home', :action => 'index'
      return false
    end
  end
end
