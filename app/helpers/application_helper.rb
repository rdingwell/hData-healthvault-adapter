# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def get_things_from_response(res,thing_types=[], multiple=true)
     if multiple
       puts thing_types.empty?
       res.info.group[0].thing.each {|x| puts (thing_types.index( x.type_id.data )|| thing_types.empty?) } 
      return res.info.group[0].thing.find_all {|x| (thing_types.index( x.type_id.data) || thing_types.empty?) } #.collect{|th| th.data_xml.anything}
    else
      return res.info.group[0].thing.find {|x| thing_types.index x.type_id.data }.data_xml[0].anything
    end
    end
  
end
