xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
  
  feed.title(" Encounters")
  feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
  feed.author do |author|
    author.name('hData Healthvault Adapter')
  end
  results = get_things_from_response(@res,[])

  results.each do |res|
    feed.entry do |entry|
      entry.title(res.data_xml[0].anything.reason)
    
      entry.link( "href" => hdata_record_encounter_url(params[:hdata_record_id],res.thing_id.data))
    
      # XXX Hardcoded and needs to change
      entry.id("urn:uuid:#{res.thing_id.data}")
      entry.updated(res.updated)
    end
  end
end