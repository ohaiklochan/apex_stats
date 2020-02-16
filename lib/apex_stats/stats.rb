class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.all
  #scrape apex stats tracker and return stats based on that DATA
    self.scrape_stats
  end
  
  def self.scrape_stats
    stats = []
  
    stats << self.scrape_dreamteam
    stats << self.scrape_ea
    
    stats
  end
  
  def self.scrape_dreamteam
    doc = Nokogiri::HTML(open("https:dreamteam.gg/apex"))
    binding.pry
  end
  
end