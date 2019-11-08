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

def vehicle_selection
  case rooms
    when vehicles = 1 then "Cargo Van"
    when vehicle = 1..2 then "12 Foot Truck"
    when vehicle = 2..3 then "16 Foot Truck"
    when vehicle = 3..5 then "22 Foot Truck"
    when vehicle = 5..7 then "26 Foot Truck"
    end
  end
end 

        
      #look into case statements instead of if/then 
    

   #def recommend_vehicle
   #x = "#{rooms}" 
    #if x < 1
    #puts vehicle_selection
    #elsif x == 2 
    #puts vehicle_selection 
    #elsif x == 3
    #puts vehicle_selection
   #vehicle_selection.each {|v, r| self.send(("#{r}="),v)}
  #  end
