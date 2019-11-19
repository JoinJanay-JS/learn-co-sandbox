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
     prompt = nil 
    
    Room.all.each.with_index(1) do  |r,index|
      puts "#{index}. #{r.name}"
    end
    
    puts "How many rooms are you moving?"
    prompt = gets.chomp.to_i 
    
  if prompt -1 > 0 && prompt -1 < room.length 
    puts  "Please check your entry and try again!"

  else 
         puts "Wow. You should try #{truck.name}."
  end 
end 

  def fuel_tank()
     puts "Would you like to know how much gas to use?" 
    
    @gas = Gas.all[user -1]
     while (not reply)
      reply = gets.chomp.downcase
    end 
    end
 end
