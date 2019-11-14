class Gas  
attr_accessor :amount
  @@all = []
  
   def initialize(amount)
     @amount = amount
    @@all << self 
    end 

  def self.all
  @@all
  end
end 