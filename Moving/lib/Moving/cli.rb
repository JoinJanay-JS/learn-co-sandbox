require './lib/environment'

class Moving::CLI 
  attr_accessor :vehicles, :rooms
  @@all = []
  
   def initialize()
   # vehicle_select.each {|v, r| self.send(("#{r}="),v)}
    @@all << self 
    end 
  

  def self.all
  @@all
  end
  
  def intro 
    puts "Hello, find your vehicle here!"
    vehicle_selection
  end 
  
  def vehicles 
   @vehicles = vehicles
  end 
  
  #def rooms 
   # @rooms = rooms
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
    puts "You should select (#{vehicles}) based on (#{rooms}) rooms."
  end
end 

        
      #look into case statements instead of if/then 


  #def vehicle_info
   #grab gas info and cargo size
  #end
