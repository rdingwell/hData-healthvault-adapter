class PatientInformationController < ApplicationController


  def index
    app = HealthvaultApp.createApp
    connection = app.create_connection
    connection.authenticate unless connection.authenticated?
    
    
  end

end
