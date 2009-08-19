xml.immunization('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/immunization",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |imm|
      
       
       imm.product @res.info.group[0].thing[0].data_xml[0].anything.name.text
       imm.date
       imm.refusal
       imm.performer    
           
end