class ApexStats::Stats
  
  attr_accessor :name, :info, :url
  
  def self.today
    #code of stats of legends
    puts <<-DOC.gsub /^\s*/, ''
      1. Bangalore
      2. Bloodhound
    DOC
    
    stat_1 = Stats.new
    stat_1.name = "Bangalore"
    stat_1.info = "Real Name: Anita Williams. Professional Soldier."
    stat_1.url = "https://www.ea.com/games/apex-legends/about/characters/bangalore"
    
    stat_2 = Stats.new
    stat_2.name = "Bloodhound"
    stat_2.info = "Real Name: Unknown. Technological Tracker."
    stat_2.url = "https://www.ea.com/games/apex-legends/about/characters/bloodhound"

  end
  
end