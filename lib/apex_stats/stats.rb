class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.all
  #scrape apex stats tracker and return stats based on that DATA
    self.scrape_stats
  end
  
  def self.scrape_stats
    stats = []
    stats << self.scrape_playapex
    stats
  end
  
  def self.scrape_playapex
    doc = Nokogiri::HTML(open("https://play-apex.net/stats"))
    container = doc.search("")
    counter = 0
    container.search("").each do |x|
      counter = counter + 1
        if counter >= 1 && counter <= 9
          legend_name = x.search("").text
          legend_type = x.search("").text
          legend_winrate = x.search("").text
          legend_popularity = x.search("").text
          legend_kill = x.search("").text
          stats << {:legendname => legend_name, :legendtype => legend_type, :winrate => legend_winrate, :popularity => legend_popularity, :legendkill => legend_kd}
        end
      end
    end
  end

  
end