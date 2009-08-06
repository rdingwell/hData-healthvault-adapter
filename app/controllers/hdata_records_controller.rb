class HdataRecordsController < ApplicationController


  def show
    app = HealthvaultApp.createApp
    connection = app.create_connection
    connection.authenticate unless connection.authenticated?
    connection.user_auth_token = session[:auth_token]
    res = HealthvaultApp.get_patient_info(params[:id],connection)
    
     respond_to do |format|
        format.xml
      end
  end

end