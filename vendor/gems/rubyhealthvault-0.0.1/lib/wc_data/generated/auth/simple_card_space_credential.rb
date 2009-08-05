# -*- ruby -*-
#--
# Copyright 2008 Danny Coates, Ashkan Farhadtouski
# All rights reserved.
# See LICENSE for permissions.
#++
# AUTOGENERATED ComplexType

module HealthVault
  module WCData
  module Auth
  
      class SimpleCardSpaceCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A SAML-based credential provided by the CardSpace service.
#<b>remarks</b>: CardSpace produces a SAML token that is encrypted using the SSL public key used when associating a CardSpace credential with a primary credential.
#<em>value</em> is a HealthVault::WCData::Types::CardSpaceCred
        def simple_cardspace=(value)
          @children['simple-cardspace'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::CardSpaceCred
        def simple_cardspace
          return @children['simple-cardspace'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simplecardspacecredential'
        
          
          @children['simple-cardspace'] = {:name => 'simple-cardspace', :class => HealthVault::WCData::Types::CardSpaceCred, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['simple-cardspace'][:value] = HealthVault::WCData::Types::CardSpaceCred.new
            
          
        
        end
      end
  end
  
  end
end