xml.problem('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/condition",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |problem|
           hv_condition = @res.info.group[0].thing[0].data_xml[0].anything # there should only be one in the req
           dateVars = {}
           dateVars["high"] = format_approx_date(hv_condition.stop_date) if hv_condition.stop_date
           dateVars["low"] = format_approx_date(hv_condition.onset_date) if hv_condition.onset_date
           problem.tag!("core:dateRange" , dateVars) if !dateVars.empty?
           problem.tag!("core:description", hv_condition.name.text)
           
end