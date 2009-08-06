class HdataRecordsController < ApplicationController


  def show
    app = HealthvaultApp.createApp
    connection = app.create_connection
    connection.authenticate unless connection.authenticated?
    connection.user_auth_token = session[:auth_token]
    res = HealthvaultApp.get_things([],params[:id],connection)
    render :xml=>res.xml.to_s
  end

end