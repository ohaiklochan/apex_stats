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
    container = doc.css("div.table-body")
    counter = 0
    container.css("div.table-row-content").each do |x|
        counter = counter + 1
        if counter >= 1 && counter <= 21
          legend_name = x.css("div.table-name span.table-name-block strong").text
          legend_type = x.css("div.table-name span.table-name-block small").text
          legend_winrate = x.css("div.table-winrate div.bar-outer").text
          legend_popularity = x.css("div.table-popularity div.bar-outer").text
          legend_kill = x.css("div.table-kd-ratio div.bar-outer").text
          stats << {:legendname => legend_name, :legendtype => legend_type, :winrate => legend_winrate, :popularity => legend_popularity, :legendkill => legend_kd}
        end
      end
    end
  end

  
end