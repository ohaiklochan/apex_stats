class ApexStats::Legends
  
  attr_accessor :name, :backstory, :passive, :tactical, :ultimate
  
  @@all = []
  
  
    # @@urls = ["https://play-apex.net/stats/Wraith, 
    # https://play-apex.net/stats/Pathfinder,
    # https://play-apex.net/stats/Lifeline,
    # https://play-apex.net/stats/Bangalore,
    # https://play-apex.net/stats/Octane,
    # https://play-apex.net/stats/Bloodhound,
    # https://play-apex.net/stats/Mirage,
    # https://play-apex.net/stats/Gibraltar,
    # https://play-apex.net/stats/Caustic"]
    
  def self.scrapelegend
    doc = Nokogiri::HTML(open("https://dreamteam.gg/apex/wiki/apex-legends-complete-characters-guide"))
    legend = ApexStats::Legends.new
    legend.name = doc.search("h2.text-align i").text
    legend.backstory = doc.search("p.span strong").text.gsub(".",". ")
    legend.abilities = []
    doc.search("https://dreamteam.gg/apex/wiki/apex-legends-complete-characters-guide").each do |ability|
      passive_ability_name = passiive_ability.search("").text
      passive_ability_description = passiive_ability.search("").text
      tactical_ability_name = tactical_ability.search("").text
      tactical_ability_description = tactical_ability.search("").text
      ultimate_ability_name = ultimate_ability.search("").text
      ultimate_ability_description = ultimate_ability.search("").text
      legend.abilities << {:passive_ability_name => passive_ability_name, :passive_ability_description => passive_ability_description, :tactical_ability_name => tactical_ability_name, :tactical_ability_description => tactical_ability_description,:ultimate_ability_name => ultimate_ability_name, :ultimate_ability_description => ultimate_ability_description}
    end
    legend
  end
  
  def self.wraith
    wraith = self.scrapelegend("https://play-apex.net/stats/Wraith")
    wraith
  end
  
  def self.pathfinder
    pathfinder = self.scrapelegend("https://play-apex.net/stats/Pathfinder")
    pathfinder
  end
  
  def self.lifeline
    lifeline = self.scrapelegend("https://play-apex.net/stats/Lifeline")
    lifeline
  end
  
  def self.bangalore
    bangalore = self.scrapelegend("https://play-apex.net/stats/Bangalore")
    bangalore
  end
  
  def self.octane
    octane = self.scrapelegend("https://play-apex.net/stats/Octane")
    octane
  end
  
  def self.bloodhound
    bloodhound = self.scrapelegend("https://play-apex.net/stats/Bloodhound")
    bloodhound
  end
  
  def self.mirage
    mirage = self.scrapelegend("https://play-apex.net/stats/Mirage")
    mirage
  end
  
  def self.gibraltar
    gibraltar = self.scrapelegend("https://play-apex.net/stats/Gibraltar")
    gibraltar
  end
  
  def self.caustic
    caustic = self.scrapelegend("https://play-apex.net/stats/Caustic")
    caustic
  end
  
end
    