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
    doc = Nokogiri::HTML(open("https://www.pcgamesn.com/apex-legends/characters-abilities-guide"))
    
    x = ApexStats::Legends.new
    x.name = doc.css("div.heroes-header-title h1").text
    x.lore = doc.css("div.heroes-lore p").text.gsub(".",". ")
    x.hp = doc.css("div.heroes-header-title span.stat-hp").text.strip + " HP" unless doc.css("div.heroes-header-title span.stat-hp").text.strip == ""
    x.ammo = doc.css("div.heroes-header-title span.stat-ammo").text.strip + " Ammo" unless doc.css("div.heroes-header-title span.stat-ammo").text.strip == ""
    x.abilities = []
    doc.css("div.heroes-abilities-ability").each do |ability|
      ability_name = ability.css("div.ability-name").text
      ability_description = ability.css("div.ability-description").text
      x.abilities << {:ability_name => ability_name, :ability_description => ability_description}
    end
    x.role = doc.css("div.heroes-header-title span.stat-role").text
    x
  end
  end
    
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
    