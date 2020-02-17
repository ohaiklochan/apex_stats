# class ApexStats::Stats
  
#   attr_accessor :name, :info, :url
  
#   def self.all
#     self.scrape_stats
#   end
  
#   def self.scrape_stats
#     stats = []
#     stats << self.scrape_playapex
#     stats
#   end
  
#   def self.scrape_playapex
#     doc = Nokogiri::HTML(open("https://dreamteam.gg/apex"))
#     container = doc.search("div.background")
#     binding.pry
#     counter = 0
#     container.search("div classbox___jUrgl list___Z4QFS legends___qZf2Y").each do |legend|
#     counter = counter + 1
#       if counter >= 1 && counter <= 9
#         legend.name = doc.search("").text
#         legend.winrate = doc.search("").text
#         legend.popularity = doc.search("").text
#         legend.kill = doc.search("").text
#         stats << {:legendname => legend_name, :winrate => legend_winrate, :popularity => legend_popularity, :legendkill => legend_kd}
#       end
#     end
#   end

  
# end