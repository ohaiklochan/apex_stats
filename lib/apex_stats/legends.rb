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
    x = ApexStats::Legends.new
    binding.pry
    x.name = doc.search("h2.text-align i").text
    x.backstory = doc.search("p.span strong").text.gsub(".",". ")
    x.abilities = []
    # doc.search("https://dreamteam.gg/apex/wiki/apex-legends-complete-characters-guide").each do |ability|
    #   ability_name = ability.search("").text
    #   ability_description = ability.search("").text
    #   x.abilities << {:ability_name => ability_name, :ability_description => ability_description}
    # end
    x
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
    