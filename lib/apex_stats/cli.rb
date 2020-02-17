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
    @stats.each.with_index(1) do |legend, i|
      puts "#{i}. #{show_legendname}."
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
        goodbye
      else
        puts "What? Type in something that makes sense to me."
        menu
      end
    end
  end
  
  def display_stats_list
    @stats = ApexStats::Stats.all
    bylist = @stats.sort_by {|hash| hash[:legendname]}
    puts ""
    puts "                               List of Legends"
    puts "==========================================================================="
    puts "||       HERO      ||   TYPE  || WINRATE || POPULARITY || K/D Ratio ||"
    bylist.each.with_index(1) do |legendstats, i|
      show_legendname = check_width(legendstats[:legendname], i)
      show_legendtype = check_width(legendstats[:legendtype], 1 , 8)
      show_winrate = check_width(legendstats[:winrate], 1 , 7)
      show_popularity = check_width(legendstats[:popularity], 1 , 8)
      show_legendkd = check_width(legendstats[:legendkill], 1 , 8)
      puts "|| #{i}. #{show_legendname} || #{show_legendtype} ||  #{show_winrate} ||    #{show_popularity} ||    #{show_legendkd} ||"
    end
    puts "============================================================================"
  end
    
  def display_stats_winrate
    @stats = ApexStats::Stats.all
    bywin = @stats.sort_by {|hash| hash[:legendname]}
    puts ""
    puts "                          List of Legends by Winrate"
    puts "============================================================================="
    puts "||       HERO      ||   TYPE  || WINRATE || POPULARITY || K/D Ratio ||"
    bywin.each.with_index(1) do |legendstats, i|
      show_legendname = check_width(legendstats[:legendname], i)
      show_legendtype = check_width(legendstats[:legendtype], 1 , 8)
      show_winrate = check_width(legendstats[:winrate], 1 , 7)
      show_popularity = check_width(legendstats[:popularity], 1 , 8)
      show_legendkd = check_width(legendstats[:legendkill], 1 , 8)
      puts "|| #{i}. #{show_legendname} || #{show_legendtype} ||  #{show_winrate} ||    #{show_popularity} ||    #{show_legendkd} ||"
    end
    puts "============================================================================="
  end
 
    
  def display_stats_popularity
    @stats = ApexStats::Stats.all
    bypop = @stats.sort_by {|hash| hash[:legendname]}
    puts ""
    puts "                        List of Legends by Popularity"
    puts "============================================================================="
    puts "||       HERO      ||   TYPE  || WINRATE || POPULARITY || K/D Ratio ||"
    bypop.each.with_index(1) do |legendstats, i|
      show_legendname = check_width(legendstats[:legendname], i)
      show_legendtype = check_width(legendstats[:legendtype], 1 , 8)
      show_winrate = check_width(legendstats[:winrate], 1 , 7)
      show_popularity = check_width(legendstats[:popularity], 1 , 8)
      show_legendkd = check_width(legendstats[:legendkill], 1 , 8)
      puts "|| #{i}. #{show_legendname} || #{show_legendtype} ||  #{show_winrate} ||    #{show_popularity} ||    #{show_legendkd} ||"
    end
    puts "============================================================================="
  end

    
  def display_stats_winrate
    @stats = ApexStats::Stats.all
    bykd = @stats.sort_by {|hash| hash[:legendname]}
    puts ""
    puts "                      List of Legends by Kill/Damage"
    puts "============================================================================="
    puts "||       HERO      ||   TYPE  || WINRATE || POPULARITY || K/D Ratio ||"
    bykd.each.with_index(1) do |legendstats, i|
      show_legendname = check_width(legendstats[:legendname], i)
      show_legendtype = check_width(legendstats[:legendtype], 1 , 8)
      show_winrate = check_width(legendstats[:winrate], 1 , 7)
      show_popularity = check_width(legendstats[:popularity], 1 , 8)
      show_legendkd = check_width(legendstats[:legendkill], 1 , 8)
      puts "|| #{i}. #{show_legendname} || #{show_legendtype} ||  #{show_winrate} ||    #{show_popularity} ||    #{show_legendkd} ||"
    end
    puts "============================================================================="
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
  
  def check_width(string, index = 1, column_width = 13)
    if index < 10 && string.size <= column_width
      add_space = column_width - string.size - 1
      add_space.times do
        string = string + " "
      end
      string
    elsif index > 9 && string.size <= column_width
      add_space = column_width - string.size - 2
      add_space.times do
        string = string + " "
      end
    end
    string
  end
  
  def show_stats(legend)
    puts "Name: #{legend.name}"
    puts ""
    puts ""
    puts "Backstory: #{legend.backstory}"
    puts ""
    puts ""
    puts "**Abilities**"
    puts "------------------------"
    legend.abilities.each do |ability|
      puts "Passive Ability: #{passive_ability[:passive_ability_name]}"
      puts "Passive Description: " + "#{passive_ability[:passive_ability_description]}"
      puts ""
      puts "Tactical Ability: #{tactical_ability[:tactical_ability_name]}"
      puts "Tactical Description: " + "#{tactical_ability[:tactical_ability_description]}"
      puts ""
      puts "Ultimate Ability: #{ultimate_ability[:ultimate_ability_name]}"
      puts "Ultimate Description: " + "#{ultimate_ability[:ultimate_ability_description]}"
      puts ""
    end
  end
