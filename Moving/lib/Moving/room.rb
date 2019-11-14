class Room
  attr_accessor :name, :truck
  @@all = []
  
   def initialize(name)
     @name = name
    @@all << self 
    end 

  def self.all
  @@all
  end
end 