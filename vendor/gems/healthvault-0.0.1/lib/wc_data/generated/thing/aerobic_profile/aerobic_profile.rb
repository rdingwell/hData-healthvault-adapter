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
  module Aerobicprofile
  
      class Aerobicprofile < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The date/time when the aerobic profile measurements were taken.
#<em>value</em> is a HealthVault::WCData::Dates::Datetime
        def when=(value)
          @children['when'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Datetime
        def when
          return @children['when'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum heart rate of the person.
#<b>remarks</b>: The maximum heart rate is measured in beats per minute (BPM).
#<em>value</em> is a String
        def max_heartrate=(value)
          @children['max-heartrate'][:value] = value
        end
        
        #<b>returns</b>: a String
        def max_heartrate
          return @children['max-heartrate'][:value]
        end
       
     
       
        
        #<b>summary</b>: The heart rate of the person when at rest.
#<b>remarks</b>: The resting heart rate is measured in beats per minute (BPM).
#<em>value</em> is a String
        def resting_heartrate=(value)
          @children['resting-heartrate'][:value] = value
        end
        
        #<b>returns</b>: a String
        def resting_heartrate
          return @children['resting-heartrate'][:value]
        end
       
     
       
        
        #<b>summary</b>: The anaerobic threshold (AT) is the exercise intensity at which lactate starts to accumulate in the blood stream.
#<b>remarks</b>: The anaerobic threshold is measured in beats per minute (BPM).
#<em>value</em> is a String
        def anaerobic_threshold=(value)
          @children['anaerobic-threshold'][:value] = value
        end
        
        #<b>returns</b>: a String
        def anaerobic_threshold
          return @children['anaerobic-threshold'][:value]
        end
       
     
       
        
        #<b>summary</b>: VO2 max is the maximum rate at which oxygen is absorbed into the blood stream by the body.
#<b>remarks</b>: VO2 max can be measured as either and absolute rate in liters of oxygen per minute, or as a relative rate in milliters of oxygen per kilogram of bodyweight per minute.
#<em>value</em> is a HealthVault::WCData::Thing::Aerobicprofile::MaxVO2
        def vo2_max=(value)
          @children['VO2-max'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Aerobicprofile::MaxVO2
        def vo2_max
          return @children['VO2-max'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Aerobicprofile::HeartrateZoneGroup
        def add_heartrate_zone_group(value)
          @children['heartrate-zone-group'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Aerobicprofile::HeartrateZoneGroup
        def remove_heartrate_zone_group(value)
            @children['heartrate-zone-group'][:value].delete(value)
        end
        
        
        #<b>summary</b>: A grouping of heart rate zones.
#<b>remarks</b>: This allows for customized groupings of heart rate zones based on different values.Heart rate zones are often used to optimize exercise for different purposes. By grouping heart rate zones into named groups it is easier to identify the zones to use for a particular workout.
#<b>returns</b>: a HealthVault::WCData::Thing::Aerobicprofile::HeartrateZoneGroup Array
        def heartrate_zone_group
          return @children['heartrate-zone-group'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'aerobic-profile'
        
          
          @children['when'] = {:name => 'when', :class => HealthVault::WCData::Dates::Datetime, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['when'][:value] = HealthVault::WCData::Dates::Datetime.new
            
          
        
          
          @children['max-heartrate'] = {:name => 'max-heartrate', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['resting-heartrate'] = {:name => 'resting-heartrate', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['anaerobic-threshold'] = {:name => 'anaerobic-threshold', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['VO2-max'] = {:name => 'VO2-max', :class => HealthVault::WCData::Thing::Aerobicprofile::MaxVO2, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['heartrate-zone-group'] = {:name => 'heartrate-zone-group', :class => HealthVault::WCData::Thing::Aerobicprofile::HeartrateZoneGroup, :value => Array.new, :min => 0, :max => 999999, :order => 6, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end
