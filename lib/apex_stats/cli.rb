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
    input = nil
    while input != "exit"
      puts "Enter the number of the legend you'd like to know more about or type in list to list the legends:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_stats = @stats[input.to_i-1]
        puts "#{the_stats.name}."
      elsif input == "list"
        list_legends
      else
        puts "Not sure what that is. Type list, legend number, or exit."
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