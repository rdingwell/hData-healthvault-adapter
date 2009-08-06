xml.patient('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/patient_information",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |pi|
          personal = get_things_from_respons(@res,['92ba621e-66b3-4a01-bd73-74844aed4f5b'],false)
          basic = get_things_from_respons(@res,['bf516a61-5252-4c28-a979-27f45f62f78d'],false)
          contact = get_things_from_respons(@res,['162dd12d-9859-4a66-b75f-96760d67072b'],false)
          pi.tag!("core:name") do |name|
              name.given personal.name.first
              name.last personal.name.last
          end
          
        contact.address.each do |ca|
          pi.tag!("core:address") do |add|
            add.street(ca.street) if ca.street
            add.city(ca.city) if ca.city
            add.state(ca.state) if cca.state
            add.postalCode(ca.postcode) if ca.postcode 
          end
          
        end
        
        # add language 
         contact.phone.each do |cp|
           pi.tag!("core:telecom" , "value"=>"tel:#{cp.number}", "use"=>cp.description )
         end
         contact.email.each do |email|
          pi.tag!("core:telecom" ,  "value"=>"email:#{email.address}", "use"=>email.description )
        end
          
          pi.id params[:hdata_record_id]
          pi.gender(  "#{basic.gender}" , "code" => "#{{"MALE"=>"M","FEMALE"=>"F"}[basic.gender] || "UN"}", "codeSystem" => "HL7", "displayName" =>"#{basic.gender}" ) 
          pi.birthTime personal.birthdate
          pi.maritalStatus personal.marital_status if personal.marital_status
          pi.race
          
         
     
end
