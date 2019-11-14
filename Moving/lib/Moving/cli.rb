require './lib/environment'

class Moving::CLI 

  def intro 
    puts "Hello, find your vehicle here!"
    Scraper.moving
    #vehicle_selection
    #fuel_tank
  end 

#def vehicle_selection()

# end
   
 
end
  puts "How many rooms are you moving?"
  