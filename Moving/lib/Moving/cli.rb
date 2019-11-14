require './lib/environment'

class Moving::CLI 
  attr_accessor :truck

  def intro 
    puts "Hello, find your vehicle here!"
    Scraper.moving
    vehicle_selection
    fuel_tank
  end 

  def vehicle_selection()
    prompt = nil 
    
    Room.all.each.with_index(1) do  |r,index|
      puts "#{index}. #{r.name}"
    end
    
    puts "How many rooms are you moving?"
    prompt = gets.chomp.to_i

    
    @truck = Truck.all[prompt - 1]
      puts "Wow. You should try #{truck.name}."
      
      if prompt <= 0 
          puts "Please check your entry and try again!"
        else prompt > 5 
        puts "You may want to try two trucks!"
      end 
end
  
  def fuel_tank()
    user_input = gets.chomp.to_str 
    @gas = Gas.all[user_input -1]
     
    puts "Would you like to know how much gas to use?" 
    if user_input = 'yes'
      puts "You will use #{gas.amount}."
    if user_input = 'no' 
      puts "Thank you for visiting!"
    end 
  end 
end
end 