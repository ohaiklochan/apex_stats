class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.all
    self.scrape_stats
  end
  
  def self.scrape_stats
    stats = []
    stats << self.scrape_playapex
    stats
  end
  
  def self.scrape_playapex
    doc = Nokogiri::HTML(open("https://play-apex.net/stats"))
    container = doc.search("div.background")
    counter = 0
    container.search("div.background h1").each do |x|
    counter = counter + 1
      if counter >= 1 && counter <= 9
        legend_name = x.search("a.div.display.inline-block").text
        legend_winrate = x.search("").text
        legend_popularity = x.search("").text
        legend_kill = x.search("").text
        stats << {:legendname => legend_name, :winrate => legend_winrate, :popularity => legend_popularity, :legendkill => legend_kd}
      end
    end
  end

  
end