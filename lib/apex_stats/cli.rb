class ApexStats::CLI
  
  def call
    list_legends
    menu
    goodbye
  end
  
  def list_legends
    puts "Welcome to Apex Stats!"
    @stats = ApexStats::Stats.all
    @stats.each.with_index(1) do |deal, i|
      puts "#{i}. #{@stats}."
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
  
  def goodbye
    puts "See ya later!"
  end
  
end