require "healthvault"
module HealthvaultApp
  include HealthVault
  def self.createApp
     config = YAML.load(File.read(RAILS_ROOT + "/config/healthvault.yml"))
     puts config.inspect
     HealthVault::Application.default #new(config["app_id"], config["url"] ,config["cert_file"], config["cert_pass"])
  end
  
  
  def self.get_patient_info(id, connection, ids=[])
     get_things(["bf516a61-5252-4c28-a979-27f45f62f78d", # basic demographic
                  "92ba621e-66b3-4a01-bd73-74844aed4f5b", # personal demographic
                  "162dd12d-9859-4a66-b75f-96760d67072b"], # personal contact 
                  id,connection,ids)
  end
  
  def self.get_medications(id,connection, ids=[])
        get_things(["5C5F1223-F63C-4464-870C-3E36BA471DEF"], id, connection,ids)
  end
  
  def self.get_allergies(id,connection, ids=[])
      get_things(["52bf9104-2c5e-4f1f-a66d-552ebcc53df7"], id, connection,ids)
  end
  
  def self.get_results(id,connection, ids=[])
      types = ["7b2ea78c-4b78-4f75-a6a7-5396fe38b09a", #aerobic profile
               "879e7c04-4e8a-4707-9ad3-b054df467ce4", #blood glucose
               "ca3c57f4-f4c1-4e15-be67-0a3caf5414ed", # blood pressure
               "adaf49ad-8e10-49f8-9783-174819e97051", # cardiac profile
               "796C186F-B874-471c-8468-3EEFF73BF66E", #cholesterol profile
               "80CF4080-AD3F-4BB5-A0B5-907C22F73017", #diabetic profile
               "F57746AF-9631-49DC-944E-2C92BEE0D1E9" , # lab test results
               "B8FCB138-F8E6-436A-A15D-E3A2D6916094", #microbiology lab resultss
               "E4911BD3-61BF-4E10-AE78-9C574B888B8F", #radiology results
               "5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd", #respitory profile
               "921588d1-27bf-423c-8e55-650d2fedb3e0", #spirometer results
               "73822612-C15F-4B49-9E65-6AF369E55C65", # vital signs - looks to be a generic unit-value sort of thing
               "3d34d87e-7fc1-4153-800f-f56592cb0d17", # weight
        ]
        get_things(types,id,connection,ids)
  end
  
  def self.get_immunizations(id, connection, ids=[])
      get_things(["3d817dbe-af42-4a9d-a553-d1298b4d08fc"], id, connection,ids)
  end
  
  def self.get_advance_directives(id,connection, ids=[])
    get_things(["822a5e5a-14f1-4d06-b92f-8f3f1b05218f"],id,connection,ids)
  end
  
  def self.get_conditions(id,connection, ids=[])
    get_things(["7ea7a1f9-880b-4bd4-b593-f5660f20eda8"], id , connection,ids)
  end
  
  
  def self.get_insurance_plan(id,connection, ids=[])
    get_things(["9366440c-ec81-4b89-b231-308a4c4d70ed"], id, connection,ids)
  end
  
  def self.get_procedures(id,connection, ids=[])
    get_things(["0A5F9A43-DC88-4E9F-890F-1F9159B76E7B"],id,connection,ids)
  end
  
  
  def self.get_encounters(id,connection, ids=[])
    get_things(["3D4BDF01-1B3E-4AFC-B41C-BD3E641A6DA7"],id,connection,ids)
  end
  
  
  def self.get_emmergancey_contact(id,connection, ids=[])
     get_things(["25c94a9f-9d3d-4576-96dc-6791178a8143"],id,connection,ids)  
  end
  
  
  def self.get_things(types,id,connection,thing_ids=[])   
       request = Request.create("GetThings", connection)
       request.header.record_id = id
       request.info.add_group(WCData::Methods::GetThings::ThingRequestGroup.new)
       thing_ids.each do |tid|
         request.info.group[0].add_id(tid)
       end
       request.info.group[0].format = WCData::Methods::GetThings::ThingFormatSpec.new
       request.info.group[0].format.add_xml("")
       request.info.group[0].format.add_section("core")
       filter = WCData::Methods::GetThings::ThingFilterSpec.new
       types.each do |type|   
          filter.add_type_id(type)
       end
       if types.empty?
          filter.xpath="/"
        end
        
       request.info.group[0].add_filter(filter)
       request.send
    
  end
  
  
  
  def self.put_things(things,id,connection)   
       request = Request.create("PutThings", connection)
       request.header.record_id = id
       
       things.each do |thing |
         th = HealthVault::WCData::Thing::Thing.new
         th.type_id = HealthVault::WCData::Thing::Thing.class_to_guid thing.class
         dx = HealthVault::WCData::Thing::DataXml.new
         dx.anything = thing
         th.add_data_xml dx
         request.info.add_thing th
       end
       
 
       request.send
    
  end
  
  
  
end