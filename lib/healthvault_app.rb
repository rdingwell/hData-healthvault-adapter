require "healthvault"
module HealthvaultApp

  def self.createApp
     config = YAML.load(RAILS_ROUTE + "/config/healthvault.yml")
     HealthVault::Application.new(config[:app_id], config[:url] ,config[:cert_file], config[:cert_pass])
  end
  
  
  def self.get_pateint_info(id)
      
  end
  
  def self.get_medications(id)
      
  end
  
  def self.get_allergies(id)
      
  end
  
  def self.get_results(id)
      
  end
  
  def self.get_immunizations(id)
      
  end
  
  
end