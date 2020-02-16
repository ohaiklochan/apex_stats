class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.all
    # puts <<-DOC.gsub /^\s*/, ''
    #   1. Bangalore
    #   2. Bloodhound
    # DOC
    
    stats_1 = self.new
    stats_1.name = "Bangalore"
    stats_1.info = "Real Name: Anita Williams. Professional Soldier."
    stats_1.url = "https://www.ea.com/games/apex-legends/about/characters/bangalore"
    
    stats_2 = self.new
    stats_2.name = "Bloodhound"
    stats_2.info = "Real Name: Unknown. Technological Tracker."
    stats_2.url = "https://www.ea.com/games/apex-legends/about/characters/bloodhound"

    [stats_1, stats_2]
  end
  
end