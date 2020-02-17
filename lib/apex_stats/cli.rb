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
    @legends = ApexStats::Legends.all
    @legends.each.with_index(1) do |legend, i|
      puts "#{i}. #{legend.name}."
    end
  end
  
  def menu
    puts "Type the name of one of the above legends to see more about that legends."
    puts "Type 'list' to list out all legends."
    puts "Type 'exit' to exit."

    input = gets.strip.downcase
      if input == "list" || input == "list"
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
