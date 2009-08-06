xml.root("xmlns" => "http://projecthdata.org/hdata/schemas/2009/06/core") do |root|
  root.documentId(params[:hdata_record_id])
  root.version('1.0')
  root.created(Time.now)
  root.lastModified(Time.now)
  root.extensions do |extensions|
    extensions.extension('http://projecthdata.org/hdata/schemas/2009/06/patient_information', 'requirement' => 'mandatory')
    extensions.extension('http://projecthdata.org/hdata/schemas/2009/06/allergy', 'requirement' => 'mandatory')
    extensions.extension('http://projecthdata.org/hdata/schemas/2009/06/result', 'requirement' => 'mandatory')
    extensions.extension('http://projecthdata.org/hdata/schemas/2009/06/medication', 'requirement' => 'mandatory')
  end
  root.sections do |sections|
    sections.section('typeId' => 'http://projecthdata.org/hdata/schemas/2009/06/patient_information', 'path' => 'patient_information', 'name' => 'Patient Information')
    sections.section('typeId' => 'http://projecthdata.org/hdata/schemas/2009/06/allergy', 'path' => 'allergies', 'name' => 'Allergies')
    sections.section('typeId' => 'http://projecthdata.org/hdata/schemas/2009/06/result', 'path' => 'vitals', 'name' => 'Vitals')
    sections.section('typeId' => 'http://projecthdata.org/hdata/schemas/2009/06/medication', 'path' => 'medications', 'name' => 'Medications')
  end
end