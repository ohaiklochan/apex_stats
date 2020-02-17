class ApexStats::Legends
  
  attr_accessor :name, :backstory, :passive, :tactical, :ultimate
  
  @@all = []
    
  def self.scrape_legend
    doc = Nokogiri::HTML(open("https://apexlegends.gamepedia.com/wraith"))
    legend = ApexStats::Legends.new
              binding.pry
    legend.name = doc.search("h1#firstHeading.firstHeading").text
    legend.backstory = doc.search("#mw-content-text p")[3..5].text.gsub(".",". ")
    legend.abilities = []
    doc.search("https://dreamteam.gg/apex/wiki/apex-legends-complete-characters-guide").each do |ability|
      passive_ability.name = doc.search("").text
      passive_ability.description = doc.search("").text
      tactical_ability.name = doc.search("").text
      tactical_ability.description = doc.search("").text
      ultimate_ability.name = doc.search("").text
      ultimate_ability.description = doc.search("").text
      legend.abilities << {:passiveabilityname => passive_ability_name, :passiveabilitydescription => passive_ability_description, :tacticalabilityname => tactical_ability_name, :tacticalabilitydescription => tactical_ability_description,:ultimateabilityname => ultimate_ability_name, :ultimateabilitydescription => ultimate_ability_description}
    end
    legend
  end
  
  def self.wraith
    wraith = self.scrape_legend("https://apexlegends.gamepedia.com/Wraith")
    wraith
  end
  
  def self.pathfinder
    pathfinder = self.scrape_legend("https://apexlegends.gamepedia.com/pathfinder")
    pathfinder
  end
  
  def self.lifeline
    lifeline = self.scrape_legend("https://apexlegends.gamepedia.com/lifeline")
    lifeline
  end
  
  def self.bangalore
    bangalore = self.scrape_legend("https://apexlegends.gamepedia.com/bangalore")
    bangalore
  end
  
  def self.octane
    octane = self.scrape_legend("https://apexlegends.gamepedia.com/octane")
    octane
  end
  
  def self.bloodhound
    bloodhound = self.scrape_legend("https://apexlegends.gamepedia.com/bloodhound")
    bloodhound
  end
  
  def self.mirage
    mirage = self.scrape_legend("https://apexlegends.gamepedia.com/mirage")
    mirage
  end
  
  def self.gibraltar
    gibraltar = self.scrape_legend("https://apexlegends.gamepedia.com/gibraltar")
    gibraltar
  end
  
  def self.caustic
    caustic = self.scrape_legend("https://apexlegends.gamepedia.com/caustic")
    caustic
  end
  
end
    