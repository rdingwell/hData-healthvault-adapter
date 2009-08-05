# -*- ruby -*-
#--
# Copyright 2008 Danny Coates, Ashkan Farhadtouski
# All rights reserved.
# See LICENSE for permissions.
#++
# AUTOGENERATED ComplexType

module HealthVault
  module WCData
  module Thing
  module Dischargesummary
  
      class Dischargesummary < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The date and time the report.
#<em>value</em> is a HealthVault::WCData::Dates::Datetime
        def when=(value)
          @children['when'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Datetime
        def when
          return @children['when'][:value]
        end
       
     
       
        
        #<b>summary</b>: The clinical type for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def type=(value)
          @children['type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def type
          return @children['type'][:value]
        end
       
     
       
        
        #<b>summary</b>: The clinical category for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def category=(value)
          @children['category'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def category
          return @children['category'][:value]
        end
       
     
       
        
        #<b>summary</b>: The clinical setting for discharge summary.
#<b>preferred-vocabulary</b>: note-setting
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def setting=(value)
          @children['setting'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def setting
          return @children['setting'][:value]
        end
       
     
       
        
        #<b>summary</b>: The medical specialty for discharge summary.
#<b>preferred-vocabulary</b>: medical-specialties
#<em>value</em> is a String
        def specialty=(value)
          @children['specialty'][:value] = value
        end
        
        #<b>returns</b>: a String
        def specialty
          return @children['specialty'][:value]
        end
       
     
       
        
        #<b>summary</b>: The discharge summary textual content.
#<em>value</em> is a String
        def text=(value)
          @children['text'][:value] = value
        end
        
        #<b>returns</b>: a String
        def text
          return @children['text'][:value]
        end
       
     
       
        
        #<b>summary</b>: The primary provider for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Person
        def primary_provider=(value)
          @children['primary-provider'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Person
        def primary_provider
          return @children['primary-provider'][:value]
        end
       
     
       
        
        #<b>summary</b>: The primary provider endorsement for discharge summary.
#<em>value</em> is a HealthVault::WCData::Dates::Datetime
        def primary_provider_endorsement=(value)
          @children['primary-provider-endorsement'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Datetime
        def primary_provider_endorsement
          return @children['primary-provider-endorsement'][:value]
        end
       
     
       
        
        #<b>summary</b>: The secondary provider for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Person
        def secondary_provider=(value)
          @children['secondary-provider'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Person
        def secondary_provider
          return @children['secondary-provider'][:value]
        end
       
     
       
        
        #<b>summary</b>: The secondary provider endorsement for discharge summary.
#<em>value</em> is a HealthVault::WCData::Dates::Datetime
        def secondary_provider_endorsement=(value)
          @children['secondary-provider-endorsement'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Datetime
        def secondary_provider_endorsement
          return @children['secondary-provider-endorsement'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date and time of discharge.
#<em>value</em> is a HealthVault::WCData::Dates::Approxdatetime
        def discharge_date_time=(value)
          @children['discharge-date-time'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Approxdatetime
        def discharge_date_time
          return @children['discharge-date-time'][:value]
        end
       
     
       
        
        #<b>summary</b>: The admitting diagnosis for discharge summary.
#<b>preferred-vocabulary</b>: icd9cm
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def admitting_diagnosis=(value)
          @children['admitting-diagnosis'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def admitting_diagnosis
          return @children['admitting-diagnosis'][:value]
        end
       
     
       
        
        #<b>summary</b>: The principal diagnonsis for discharge summary.
#<b>preferred-vocabulary</b>: icd9cm
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def principal_diagnosis=(value)
          @children['principal-diagnosis'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def principal_diagnosis
          return @children['principal-diagnosis'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def add_additional_diagnosis(value)
          @children['additional-diagnosis'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Types::Codablevalue
        def remove_additional_diagnosis(value)
            @children['additional-diagnosis'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Additional diagnosis for discharge summary.
#<b>preferred-vocabulary</b>: icd9cm
#<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue Array
        def additional_diagnosis
          return @children['additional-diagnosis'][:value]
        end
       
     
       
        
        #<b>summary</b>: The primary procedure physician for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Person
        def principal_procedure_physician=(value)
          @children['principal-procedure-physician'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Person
        def principal_procedure_physician
          return @children['principal-procedure-physician'][:value]
        end
       
     
       
        
        #<b>summary</b>: The principal procedure for discharge summary.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def principal_procedure=(value)
          @children['principal-procedure'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def principal_procedure
          return @children['principal-procedure'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def add_additional_procedure(value)
          @children['additional-procedure'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Types::Codablevalue
        def remove_additional_procedure(value)
            @children['additional-procedure'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Any additional procedure for discharge summary.
#<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue Array
        def additional_procedure
          return @children['additional-procedure'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'discharge-summary'
        
          
          @children['when'] = {:name => 'when', :class => HealthVault::WCData::Dates::Datetime, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['when'][:value] = HealthVault::WCData::Dates::Datetime.new
            
          
        
          
          @children['type'] = {:name => 'type', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['category'] = {:name => 'category', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['setting'] = {:name => 'setting', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['specialty'] = {:name => 'specialty', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['text'] = {:name => 'text', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['primary-provider'] = {:name => 'primary-provider', :class => HealthVault::WCData::Thing::Types::Person, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['primary-provider-endorsement'] = {:name => 'primary-provider-endorsement', :class => HealthVault::WCData::Dates::Datetime, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['secondary-provider'] = {:name => 'secondary-provider', :class => HealthVault::WCData::Thing::Types::Person, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['secondary-provider-endorsement'] = {:name => 'secondary-provider-endorsement', :class => HealthVault::WCData::Dates::Datetime, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['discharge-date-time'] = {:name => 'discharge-date-time', :class => HealthVault::WCData::Dates::Approxdatetime, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['admitting-diagnosis'] = {:name => 'admitting-diagnosis', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
          
          @children['principal-diagnosis'] = {:name => 'principal-diagnosis', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          
        
          
          @children['additional-diagnosis'] = {:name => 'additional-diagnosis', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => Array.new, :min => 0, :max => 999999, :order => 14, :place => :element, :choice => 0 }
          
        
          
          @children['principal-procedure-physician'] = {:name => 'principal-procedure-physician', :class => HealthVault::WCData::Thing::Types::Person, :value => nil, :min => 0, :max => 1, :order => 15, :place => :element, :choice => 0 }
            
          
        
          
          @children['principal-procedure'] = {:name => 'principal-procedure', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 16, :place => :element, :choice => 0 }
            
          
        
          
          @children['additional-procedure'] = {:name => 'additional-procedure', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => Array.new, :min => 0, :max => 999999, :order => 17, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end
