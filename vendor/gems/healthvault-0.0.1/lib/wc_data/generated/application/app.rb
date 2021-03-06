# -*- ruby -*-
#--
# Copyright 2008 Danny Coates, Ashkan Farhadtouski
# All rights reserved.
# See LICENSE for permissions.
#++
# AUTOGENERATED ComplexType

module HealthVault
  module WCData
  module Application
  
      class App < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def app_auth_required=(value)
          @children['app-auth-required'][:value] = value
        end
        
        #<b>returns</b>: a String
        def app_auth_required
          return @children['app-auth-required'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def is_published=(value)
          @children['is-published'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_published
          return @children['is-published'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def action_url=(value)
          @children['action-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def action_url
          return @children['action-url'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def auth_reason=(value)
          @children['auth-reason'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_reason
          return @children['auth-reason'][:value]
        end
       
     
       
        
        #<b>remarks</b>: This parameter specifies the application's domain name. E-mail sent from the application, will have its From address originating from this domain. If the domain were myapp.com, then the From address will be "mailbox@myapp.com", where mailbox is specified in the send message request from the app.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def domain_name=(value)
          @children['domain-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def domain_name
          return @children['domain-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: Access token for client services.
#<b>remarks</b>: Token required to access HealthVault client services. For instance, the vocabulary search service.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def client_service_token=(value)
          @children['client-service-token'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def client_service_token
          return @children['client-service-token'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens=(value)
          @children['persistent-tokens'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens
          return @children['persistent-tokens'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'app'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['app-auth-required'] = {:name => 'app-auth-required', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['app-auth-required'][:value] = String.new
            
          
        
          
          @children['is-published'] = {:name => 'is-published', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['is-published'][:value] = String.new
            
          
        
          
          @children['action-url'] = {:name => 'action-url', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['auth-reason'] = {:name => 'auth-reason', :class => String, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['domain-name'] = {:name => 'domain-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['client-service-token'] = {:name => 'client-service-token', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['persistent-tokens'] = {:name => 'persistent-tokens', :class => HealthVault::WCData::Application::AppPersistentTokens, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end
