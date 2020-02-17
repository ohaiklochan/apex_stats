class ApexStats::Legends
  
  attr_accessor :name, :backstory, :passive, :tactical, :ultimate
  
  @@all = []
    
  def self.all
    self.scrape_legend(page_url)
  end
  
  def self.scrape_stats
    stats = []
    stats << self.scrape_legend(page_url)
    stats
  end  
    
  def self.scrape_legend(page_url)
    doc = Nokogiri::HTML(open(page_url))
    legend = ApexStats::Legends.new
    legend.name = doc.search("h1#firstHeading.firstHeading").text
    legend.backstory = doc.search("#mw-content-text p")[3].text.gsub(".",". ")
    legend.abilities = []
    doc.search("span#Abilities.mw-headline").each do |ability|
      passive_ability_name = doc.search("span.mw-headline")[3].text
      passive_ability_description = doc.search("div.tabbertab li")[6].text
      tactical_ability_name = doc.search("span.mw-headline")[2].text
      tactical_ability_description = doc.search("div.tabbertab li")[1].text
      ultimate_ability_description = doc.search("span.mw-headline")[4].text
      ultimate_ability_description = doc.search("div.tabbertab li")[4].text
      legend.abilities << {:passive_ability_name => passive_ability_name, :passive_ability_description => passive_ability_description, :tactical_ability_name => tactical_ability_name, :tactical_ability_description => tactical_ability_description,:ultimate_ability_name => ultimate_ability_name, :ultimate_ability_description => ultimate_ability_description}
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
    