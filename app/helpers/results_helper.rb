# Methods added to this helper will be available to all templates in the application.
module ResultsHelper
  

  def result_feed_title(xml, result)

    type = HealthvaultApp::RESULT_TYPE_MAPPING[result.type_id.data]
    send "#{type || 'generic'}_feed_title".to_sym, xml,result
   
  end
  
  def generic_feed_title(xml,result)
   
    xml.title(result.thing_id.data + " " + result.data_xml[0].anything.class.to_s)
  end
  
  def labtest_result_feed_title(xml,result)
    lb = result.data_xml[0].anything
    xml.title("Labresults Date  - #{result_date_to_s(lb.when)}")
  end
  
  def weight_feed_title(xml,result)
    weight = result.data_xml[0].anything
    xml.title("Weight - #{weight.value.kg} KG    Date - #{result_date_to_s(weight.when)}")
  
   
  end
  
  def blood_pressure_feed_title(xml, result)
    
    bp = result.data_xml[0].anything
    xml.title("Blood Pressure - #{bp.value.systolic} over #{bp.value.diastolic}  Date - #{result_date_to_s(bp.when)}")
  end
  
  def vital_sign_feed_title(xml,result)
    vs = result.data_xml[0].anything
     xml.title("Vital - #{vs.vital_sign_result.name}   #{vs.vital_sign_result.value} #{vs.vital_sign_result.unit}  Date - #{result_date_to_s(vs.when)}")
  end
  
  
  def result_date_to_s(date)
    "#{date.date.m}/#{date.date.d}/#{date.date.y}" if date
  end
  
  
  def results_value(xml,result)
     type = HealthvaultApp::RESULT_TYPE_MAPPING[result.type_id.data]
      send "#{type || 'generic'}_value".to_sym, xml,result
  end
  
  
  def weight_value(xml,result)
    weight = result.data_xml[0].anything
    xml.type("weight")
    unit_value(xml,"KG", weight.value.kg)
  end
  
  def blood_presure_value(xml)
     bp = result.data_xml[0].anything
     xml.type("blood pressure")
    xml.value("xsi:type"=>"bp", "systolic"=>bp.value.systolic, "diastolic"=>bp.value.diastolic)
  end
  
  def vital_sign_value(xml, result)
     vs = result.data_xml[0].anything
     unit_value(xml,vs.vital_sign_result.unit,vs.vital_sign_result.value)
  end
  
  def labtest_value(xml,result)
    xml.value(result.to_s)
  end
  
  
  def unit_value(xml,unit,value)
    xml.value("xsi:type"=>"unitValue", "unit"=>unit, "value"=>value)
  end
  
end