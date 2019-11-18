require './lib/environment'

class Moving::CLI 
  
attr_accessor :truck, :gas

  def intro 
    puts "Hello, find your vehicle here!"
    Scraper.moving
    validate_truck
    vehicle_selection
    fuel_tank
  end 

  def validate_truck()
    binding.pry
    @truck = Truck.all.index
    validates_each :truck, allow_blank: false, allow_nil: false
   validates_with  truck.each.with_index[prompt -1]
  end
  
  def vehicle_selection()
    prompt = nil
    
    Room.all.each.with_index(1) do  |r,index|
      puts "#{index}. #{r.name}"
    
    puts "How many rooms are you moving?"
    prompt = gets.chomp.to_i
    
    loop prompt do 
      if prompt <= 5
        puts  "Please check your entry and try again!"
     if prompt > 5 
       puts "You may want to try two trucks!"
    elsif
       puts "Wow. You should try #{truck.name}."
     end  
     break
  end

  def fuel_tank()
     puts "Would you like to know how much gas to use?" 
    
    @gas = Gas.all[user -1]
     while (not reply)
      reply = gets.chomp.downcase
    end 
    end
 end
end 
end
end