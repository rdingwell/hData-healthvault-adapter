# -*- ruby -*-
#--
# Copyright 2008 Danny Coates, Ashkan Farhadtouski
# All rights reserved.
# See LICENSE for permissions.
#++
# AUTOGENERATED class

module HealthVault
  module WCData
  module Thing
module Basic

      #Country is a string
      class Country < SimpleType
      
        
        #pattern = [a-zA-Z][a-zA-Z]
        def pattern(value)
        
          return true
        
        end
        
      
        
      
        def self.valid?(value)
          result = true
        
          
          result = result && self.pattern(value)
          
        
          
          
        
          return result
        end
      end
  end
  end
  
  end
end
