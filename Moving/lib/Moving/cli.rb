require './lib/environment'

class Moving::CLI 
 attr_accessor :truck, :gas, :room

  def intro 
    puts "Hello, find your vehicle here!"
    Scraper.moving
    vehicle_selection
    fuel_tank
  end 
  
  def vehicle_selection()
    
    Truck.all.each.with_index(1) do  |r,index|
      puts "#{index}. #{r.room.name}"
    end
    
    puts "How many rooms are you moving?"
    prompt = gets.chomp.to_i 
    @truck = Truck.all[prompt -1]
  
    if prompt > 0 && prompt < Room.all.length 
    puts "Wow. You should try #{@truck.name}."

  else 
    puts  "Please check your entry and try again!"
         
  end 
end 

  def fuel_tank()
     puts "Would you like to know how much gas to use? please type y/n" 
    prompt = gets.chomp.downcase
    
    if prompt == 'y' 
      puts "You will use #{@truck.gas.amount}."
    else  
      puts "Thank you for visiting our page!"
    end
    end
 end