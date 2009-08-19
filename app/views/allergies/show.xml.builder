xml.allergy('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/allergy",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |allergy|
           
          hv_allergy = @res.info.group[0].thing[0].data_xml[0].anything
          
          allergy.product hv_allergy.name.text
          allergy.type   hv_allergy.allergen_type.text if hv_allergy.reaction.allergen_type.
          allergy.tag!("core:date", format_hv_date(hv_allergy.date))  if hv_allergy.date
          allergy.reaction hv_allergy.reaction.text if hv_allergy.reaction

           
end