class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.all
  #scrape apex stats tracker and return stats based on that DATA
    self.scrape_stats
  end
  
  def self.scrape_stats
    stats = []
  
    stats << self.scrape_gamingfeature
    stats << self.scrape_pcgames
    
    stats
  end
  
  def self.scrape_gamingfeature
    doc = Nokogiri::HTML(open("https://www.gamingfeature.com/apex-legends-stats/"))
    binding.pry
  end
  
  def self.scrape_pcgames
    doc = Nokogiri::HTML(open("https://www.pcgamesn.com/apex-legends/characters-abilities-guide"))
  end
  
end