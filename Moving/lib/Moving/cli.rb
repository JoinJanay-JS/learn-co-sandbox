require './lib/environment'

class Moving::CLI 

  def intro 
    puts "Hello, find your vehicle here!"
    vehicle_selection
    fuel_tank
  end 
  
  def vehicles 
   @vehicles = vehicles
  end 
  
  
  def gas=(gas)
  @gas = gas
end
def gas
  @gas 
end
  #def gas 
  #  @gas = gas
  #end 

def vehicle_selection()
  puts "How many rooms do you have?"
  rooms = gets.to_i
  vehicles = nil
  case rooms
    when 1 
      vehicles = "Cargo Van"
    when 1..2   
      vehicles = "12 Foot Truck"
    when 2..3  
      vehicles = "16 Foot Truck" 
    when 3..5  
      vehicles = "22 Foot Truck"
    when 5..7 
      vehicles = "26 Foot Truck"
    end
    puts "You should select #{vehicles} based on #{rooms} room(s)."
  end
end 

# vehicle_select.each {|v, r| self.send(("#{r}="),v)}

def fuel_tank()
puts "How much gas will you use?"
gas = gets
fuel = nil 
  case gas 
    when 'Cargo Van'
     then fuel == "Up to 31 gallons at 12 mph!"
    when '12 Foot Truck' || '16 Foot Truck'
      then fuel == "Up to 33 gallons and 12 mph!"
    when '22 Foot Truck' || '26 Foot Truck'
      then fuel == "Up to 50 gallons and 13 mph!"
    end
  puts "You should expect to use #{fuel}."
end 



 