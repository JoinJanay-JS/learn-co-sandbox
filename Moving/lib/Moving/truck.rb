class Truck  
  attr_accessor :name, :gas, :room 
  
  @@all = []
  
   def initialize(name)
     @name = name
    @@all << self 
    end 

  def self.all
  @@all
  end
end  