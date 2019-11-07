class Moving::CLI 
  attr_accessor :vehicles, :rooms
  @@all = []
  
  
  def intro 
    puts "Hello, find your vehicle here!"
    recommend_vehicle
  end 
  
  def vehicles 
    @vehicles = vehicles
  end 
  
  def rooms 
    @rooms = rooms
  end 

def vehicle_selection
  puts "Please select '#{vehicle}'"
    if vehicle == 1
    then vehicle = 'Cargo Van'
      elsif vehicle == 2
      then vehicle = '12 Foot Truck'
        elsif vehicle == 3
        then vehicle = '16 Foot Truck'
          elsif vehicle = 4 || 5
          then vehicle = '22 Foot Truck'
            elsif vehicle = 6 || 7
            then vehicle = '26 Foot Truck'
            end 
          end 
        end
        
      #look into case statements instead of if/then 
    
 

   def recommend_vehicle
    x = "#{room}" 
    if x < 1
    puts vehicle_selection
    elsif x == 2 
    puts vehicle_selection 
    elsif x == 3
    puts vehicle_selection
  end 
  end


  def initialize(vehicle_select)
    vehicle_select.each {|v, r| self.send(("#{r}="),v)}
    @@all << self 
    end 
  

  def self.all
  @@all
  end


