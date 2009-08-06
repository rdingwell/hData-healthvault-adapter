class ResultsController < ApplicationController


  def index
    app = HealthvaultApp.createApp
    connection = app.create_connection
    connection.authenticate unless connection.authenticated?
    connection.user_auth_token = session[:auth_token]
    @res = HealthvaultApp.get_results(params[:hdata_record_id],connection)
    
    respond_to do |format|
      format.xml
    end
  end
  
end