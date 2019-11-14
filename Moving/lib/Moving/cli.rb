require './lib/environment'

class Moving::CLI 

  def intro 
    puts "Hello, find your vehicle here!"
    Scraper.moving
    vehicle_selection
    #fuel_tank
  end 

  def vehicle_selection(room)
      puts "How many rooms are you moving?"
        message = nil
        while truck.room= gets do 
        if truck.room =~/room/ then 
          if room==true then 
            puts "#{message}"
          end
        message=StringIO.new(line);
        puts message
        truck.room=true
        else
        message << room
        end
      end
  end
end