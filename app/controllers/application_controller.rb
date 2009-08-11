# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  APP_ID = "05a059c9-c309-46af-9b86-b06d42510550%26"
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :check_authentication, :except => ["authenticate","reauthenticate"]
  
  def index
    app = HealthvaultApp.createApp
    connection = app.create_connection
    connection.authenticate unless connection.authenticated?
    connection.user_auth_token = session[:auth_token]
    @res =HealthvaultApp.get_person_info(connection)
  end
  

  
  def check_authentication
    if session[:auth_token]
      return true
    end
    session[:original_url] = request.url
    redirect_to "https://account.healthvault-ppe.com/redirect.aspx?target=AUTH&targetqs=?appid=#{APP_ID}redirect=#{request.protocol}#{request.host_with_port}/auth/authenticate"
  end
  
 
  
  
end
