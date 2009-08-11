class AuthController < ApplicationController
  
  def index
    
  end
  
  def authenticate
    if params["wctoken"] 
      session[:auth_token] = params["wctoken"]
      url = session.delete :original_url 
      redirect_to url
      return
    end
    
  end
  
  def reauthenticate
    
    session[:auth_token]=nil
    redirect_to "/"  
   end
  
end
