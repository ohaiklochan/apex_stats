class ApexStats::CLI
  
  def call
    welcome
    display_stats_list
    menu
    goodbye
  end
  
  def welcome
    puts ""
    puts "Welcome to Apex Stats!"
  end
  
  def display_stats_list
    puts ""
    puts "Legends:"  
    puts "
      1. wraith
      2. pathfinder
      3. lifeline
      4. octane
      5. bangalore
      6. bloodhound
      7. mirage
      8. caustic
      9. gibraltar"
  end

  
  def menu
    puts "Type the name of one of the legends to see more about that legend."
    puts "Type 'list' to list out all legends."
    puts "Type 'exit' to exit."

    input = gets.strip.downcase
      if input == "list"
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
    legend = ApexStats::Legends.wraith
    show_stats(legend)
  end
  
  def display_pathfinder
    legend = ApexStats::Legends.pathfinder
    show_stats(legend)
  end
  
  def display_lifeline
    legend = ApexStats::Legends.lifeline
    show_stats(legend)
  end
  
  def display_octane
    legend = ApexStats::Legends.octane
    show_stats(legend)
  end
  
  def display_bangalore
    legend = ApexStats::Legends.bangalore
    show_stats(legend)
  end
  
  def display_bloodhound
    legend = ApexStats::Legends.bloodhound
    show_stats(legend)
  end
  
  def display_mirage
    legend = ApexStats::Legends.mirage
    show_stats(legend)
  end
  
  def display_caustic
    legend = ApexStats::Legends.caustic
    show_stats(legend)
  end
  
  def display_gibraltar
    legend = ApexStats::Legends.gibraltar
    show_stats(legend)
  end
  
  def goodbye
    puts "See ya later!"
  end
  
  def show_stats(legend)
    puts "Name: #{ApexStats::Legends.name}"
    puts ""
    puts ""
    puts "Backstory: #{ApexStats::Legends.backstory}"
    puts ""
    puts ""
    puts "**Abilities**"
    puts "------------------------"
    #legend.abilities.each do |ability|
    puts "Passive Ability: #{passive_ability_name[:passive_ability_name]}"
    puts "Passive Description: " + "#{passive_ability_description[:passive_ability_description]}"
    puts ""
    puts "Tactical Ability: #{tactical_ability_name[:tactical_ability_name]}"
    puts "Tactical Description: " + "#{tactical_ability_description[:tactical_ability_description]}"
    puts ""
    puts "Ultimate Ability: #{ultimate_ability_name[:ultimate_ability_name]}"
    puts "Ultimate Description: " + "#{ultimate_ability_description[:ultimate_ability_description]}"
    puts ""
  end
  