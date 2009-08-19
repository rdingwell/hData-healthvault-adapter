xml.encounter('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/encounter",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |encounter|
           
   hv_encounter = @res.info.group[0].thing[0].data_xml[0].anything # there should only be one in the req

   encounter.type hv_encounter.type.text if hv_encounter.type
   dateAttrs = {}
   
   dateAttrs["high"] = format_apprx_date hv_encounter.duration.end_date if hv_encounter.duration.end_date 
   dateAttrs["low"] = format_apprx_date hv_encounter.duration.start_date if hv_encounter.duration.start_date 
   
   encounter.tag!("core:dateRange" , dateAttrs) if !dateAttrs.empty?
           
end