# # app/views/stories/feed.atom.builder
# xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
#   feed.title(@patient.name)
#   feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
#   feed.author do |author|
#     author.name('hData VistA Adapter')
#   end
#   feed.entry do |entry|
#     entry.title('Patient Information')
#     
#     # XXX Hardcoded and needs to change
#     entry.link( "href"=>"http://#{@host_port}/hdata_records/#{@patient_ien}/patient_information/information")
#     
#     # XXX Hardcoded and needs to change
#     entry.id('urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6')
#     entry.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ")) # needed to work with Google Reader.
#   end
# end
xml.patient('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/patient_information",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |pi|
          personal = get_thing_from_response(@res,['92ba621e-66b3-4a01-bd73-74844aed4f5b'])
          basic = get_thing_from_response(@res,['bf516a61-5252-4c28-a979-27f45f62f78d'])
          contact = get_thing_from_response(@res,['162dd12d-9859-4a66-b75f-96760d67072b'])
        
        if personal
          pi.tag!("core:name") do |name|
              name.given personal.name.first
              name.last personal.name.last
          end
        end
        
        if contact
        contact.contact.address.each do |ca|
          pi.tag!("core:address") do |add|
            add.street(ca.street) if ca.street
            add.city(ca.city) if ca.city
            add.state(ca.state) if cca.state
            add.postalCode(ca.postcode) if ca.postcode 
          end
          
        end
        
        # add language 
         contact.contact.phone.each do |cp|
           pi.tag!("core:telecom" , "value"=>"tel:#{cp.number}", "use"=>cp.description )
         end
         contact.contact.email.each do |email|
          pi.tag!("core:telecom" ,  "value"=>"email:#{email.address}", "use"=>email.description )
        end
        end
          
          pi.id params[:hdata_record_id]
          pi.gender(  "#{basic.gender}" , "code" => "#{{"MALE"=>"M","FEMALE"=>"F"}[basic.gender] || "UN"}", "codeSystem" => "HL7", "displayName" =>"#{basic.gender}" ) 
          if personal
            pi.birthTime format_hv_date(personal.birthdate) if personal.birthdate
            pi.maritalStatus personal.marital_status if personal.marital_status
          end
         
end
