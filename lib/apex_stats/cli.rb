class ApexStats::CLI
  
  def call
    list_legends
    menu
    goodbye
  end
  
  def list_legends
    puts "Welcome to Apex Stats!"
    puts <<-DOC.gsub /^\s*/, ''
      1. Bangalore
      2. Bloodhound
    DOC
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the legend you'd like to know more about or type in list to list the legends:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Real Name: Anita Williams - Born into a military family where she, her parents, and her four older brothers all served in the IMC Armed Forces, Bangalore has been an exceptional soldier since she was young. She was top of her class at the IMC Military Academy and the only cadet who could take apart a Peacekeeper, equip it with a Precision Choke hop-up, and put it back together in under twenty seconds – blindfolded. Three years ago, Anita and her brother Jackson were ordered to retrieve a mercenary fleet from the Outlands to aid in the IMC’s fight against the Militia. However, their unit lost contact with IMC HQ and were ambushed on arrival. The squad scattered, but Jackson stayed behind to give his sister time to escape. Alone and with no way home, Anita put her training, extensive weapon knowledge, and competitive spirit to work by joining the Apex Games. Now, she fights to raise money for passage back to the IMC home base, where she hopes to reunite with what remains of her family."
      when "2"
        puts "Real Name: Unknown - Bloodhound is known across the Outlands as one of the greatest game hunters the Frontier has ever seen – and that’s about all anyone knows. Their identity is a mystery wrapped in layers of rumors: they are fabulously wealthy, a bloodthirsty murderer, a Goliath whisperer, a former slave, half bat, and a dozen other things depending on who’s doing the whispering. All anyone truly knows is that Bloodhound is a force to be reckoned with in the Apex Games. Bloodhound’s unparalleled tracking skills are a boon to any team they join, helping them root out hidden opponents and tracking the enemy’s movements. Calling on Earth’s Old Norse Gods to guide them, Bloodhound believes that destiny is a path that has already been laid out, eventually carrying all to their death. But with that knowledge comes strength, because until that day comes, Bloodhound knows they can’t be stopped."
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