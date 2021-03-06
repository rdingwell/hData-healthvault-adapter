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
  module Types
  
      class Labtesttype < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The date of the laboratory test.
#<em>value</em> is a HealthVault::WCData::Dates::Datetime
        def when=(value)
          @children['when'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Datetime
        def when
          return @children['when'][:value]
        end
       
     
       
        
        #<b>summary</b>: The name of the laboratory test.
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The substance tested.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def substance=(value)
          @children['substance'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def substance
          return @children['substance'][:value]
        end
       
     
       
        
        #<b>summary</b>: The collection method for the laboratory test.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def collection_method=(value)
          @children['collection-method'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def collection_method
          return @children['collection-method'][:value]
        end
       
     
       
        
        #<b>summary</b>: The abbreviation for the laboratory test.
#<em>value</em> is a String
        def abbreviation=(value)
          @children['abbreviation'][:value] = value
        end
        
        #<b>returns</b>: a String
        def abbreviation
          return @children['abbreviation'][:value]
        end
       
     
       
        
        #<b>summary</b>: Free form description of the laboratory test.
#<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def add_code(value)
          @children['code'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Types::Codablevalue
        def remove_code(value)
            @children['code'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The clinical code for the laboratory test.
#<b>preferred-vocabulary</b>: LOINC
#<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue Array
        def code
          return @children['code'][:value]
        end
       
     
       
        
        #<b>summary</b>: A clinical value within a laboratory result.
#<b>remarks</b>: This type is define a clinical value within a laboratory result, including value, unit, reference and toxic ranges.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Labresulttype
        def result=(value)
          @children['result'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Labresulttype
        def result
          return @children['result'][:value]
        end
       
     
       
        
        #<b>summary</b>: The status of the laboratory result.
#<b>remarks</b>: Examples of status include complete and pending.
#<b>preferred-vocabulary</b>: lab-results-status
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def status=(value)
          @children['status'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def status
          return @children['status'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'lab-test-type'
        
          
          @children['when'] = {:name => 'when', :class => HealthVault::WCData::Dates::Datetime, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['when'][:value] = HealthVault::WCData::Dates::Datetime.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['substance'] = {:name => 'substance', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['collection-method'] = {:name => 'collection-method', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['abbreviation'] = {:name => 'abbreviation', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['code'] = {:name => 'code', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => Array.new, :min => 0, :max => 999999, :order => 7, :place => :element, :choice => 0 }
          
        
          
          @children['result'] = {:name => 'result', :class => HealthVault::WCData::Thing::Types::Labresulttype, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['status'] = {:name => 'status', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end
