xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
  
  feed.title(" Results")
  feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
  feed.author do |author|
    author.name('hData Healthvault Adapter')
  end
  results = get_things_from_response(@res,[])
  puts @res.to_s
  results.each do |res|
    feed.entry do |entry| 
       result_feed_title(entry,res)     
       entry.link( "href" => hdata_record_result_url(params[:hdata_record_id],res.thing_id.data))
      # XXX Hardcoded and needs to change
      entry.id("urn:uuid:#{res.thing_id.data}")
      entry.updated(res.updated)
    end
  end
end