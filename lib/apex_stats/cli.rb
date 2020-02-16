class ApexStats::CLI
  
  def call
    welcome
    list_legends
    menu
    goodbye
  end
  
  def welcome
    puts ""
    puts "Welcome to Apex Stats!"
  end
  
  def list_legends
    @stats = ApexStats::Stats.all
    @stats.each.with_index(1) do |deal, i|
      puts "#{i}. #{@legend.name}."
    end
  end
  
  def menu
    
    puts "Type the following to change sorting rules: '(win)rate' '(pop)ularity' '(kd)ratio' or '(list)'."
    puts "Type the name of one of the above heroes to see more about that hero."
    puts "Type 'exit' to exit."

    input = gets.strip.downcase
      if input == "winrate" || input == "win"
        display_stats_winrate
        menu
      elsif input == "popularity" || input == "pop"
        display_stats_popularity
        menu
      elsif input == "kdratio" || input == "kd"
        display_stats_legendkd
        menu
      elsif input == "list" || input == "list"
        display_stats_list
        menu
      elsif input == "wraith"
        display_wraith
        menu
      elsif input == "pathfinder"
        display_pathfinder
        menu
      elsif input == "lifeline"
        display_lifeline
        menu
      elsif input == "octane"
        display_octane
        menu
      elsif input == "bangalore"
        display_bangalore
        menu
      elsif input == "bloodhound"
        display_bloodhound
        menu
      elsif input == "mirage"
        display_mirage
        menu
      elsif input == "caustic"
        display_caustic
        menu
      elsif input == "gibraltar"
        display_gibraltar
        menu
      elsif input == "exit"
        exit
      else
        puts "What? Type in something that makes sense to me."
        menu
      end
    end
  end
  
  def display_wraith
    x = ApexStats::Legend.wraith
    show_stats(x)
  end
  
  def display_pathfinder
    x = ApexStats::Legend.pathfinder
    show_stats(x)
  end
  
  def display_lifeline
    x = ApexStats::Legend.lifeline
    show_stats(x)
  end
  
  def display_octane
    x = ApexStats::Legend.octane
    show_stats(x)
  end
  
  def display_bangalore
    x = ApexStats::Legend.bangalore
    show_stats(x)
  end
  
  def display_bloodhound
    x = ApexStats::Legend.bloodhound
    show_stats(x)
  end
  
  def display_mirage
    x = ApexStats::Legend.mirage
    show_stats(x)
  end
  
  def display_caustic
    x = ApexStats::Legend.caustic
    show_stats(x)
  end
  
  def display_gibraltar
    x = ApexStats::Legend.gibraltar
    show_stats(x)
  end
  
  def goodbye
    puts "See ya later!"
  end
  
end