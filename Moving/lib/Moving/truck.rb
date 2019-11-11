class Truck  
  
  attr_accessor  :rooms, :gas
  @@all = []
  
   def initialize()
  
    @@all << self 
    end 

  def self.all
  @@all
  end
end 