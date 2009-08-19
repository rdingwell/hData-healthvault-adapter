# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def get_things_from_response(res,thing_types=[], multiple=true)
     if multiple
      
      return res.info.group[0].thing.find_all {|x| (thing_types.index( x.type_id.data) || thing_types.empty?) } #.collect{|th| th.data_xml.anything}
    else
      return res.info.group[0].thing.find {|x| thing_types.index x.type_id.data }
    end
    end
  
  
    def get_thing_from_response(res,thing_types=[], deref=true)
        thing = res.info.group[0].thing.find {|x| thing_types.index x.type_id.data }
        return deref && thing ? thing.data_xml[0].anything : thing
      end
      
    def format_hv_date(date)
     "#{date.date.m}/#{date.date.d}/#{date.date.y}" if date
    end

    def format_approx_date(date)
      "#{date.structured.date.m}/#{date.structured.date.d}/#{date.structured.date.y}" if date
    end
end
