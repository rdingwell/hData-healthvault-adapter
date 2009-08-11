xml.result('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/result",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core",
         'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance") do |result|
           
          results_value(result,@res.info.group[0].thing[0])
           
end