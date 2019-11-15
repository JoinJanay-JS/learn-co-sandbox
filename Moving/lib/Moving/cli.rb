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

    
    @truck = Truck.all[prompt -1]
  
      puts "Wow. You should try #{truck.name}."
      
      if prompt <= 0 
       puts "Please check your entry and try again!"
      if prompt > 5 
       puts "You may want to try two trucks!"
     end  
end
  
  def fuel_tank()
     puts "Would you like to know how much gas to use?" 
    
    user = gets.chomp 
    @gas = Gas.all[user -1]
   
    case gas 
    when user == 'Yes'
      then puts "You will use #{gas.amount}."
    when user == 'No' 
    then  puts "Thank you for visiting!"
    end  
  end 
end
end 