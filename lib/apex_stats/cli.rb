class ApexStats::CLI
  
  def call
    list_legends
    menu
    goodbye
  end
  
  def list_legends
    puts "Welcome to Apex Stats!"
    @stats = ApexStats::Stats.all
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the legend you'd like to know more about or type in list to list the legends:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "info on Bangalore goes here"
      when "2"
        puts "info on Bloodhound goes here"
      when "list"
        list_legends
      else
        puts "Not sure what that is. Type list, legend number, or exit."
      end
    end
  end
  
  def goodbye
    puts "See ya later!"
  end
  
end