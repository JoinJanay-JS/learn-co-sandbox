class Scraper 
attr_accessor :parse_page

  def self.scrape_the_page()
    doc = HTTParty.get("https://www.pensketruckrental.com/moving-trucks/#chart")
    @parse_page ||= Nokogiri::HTML(doc)
  end

  def self.moving
     trucks = self.scrape_the_page.css(".view-trucks.border-bottom-none")
     names = trucks.css("tr")[0].text.split("\n")
     names.pop
     names.shift(2)
     rooms = trucks.css("tr")[1].text.split("\n")
     rooms.pop
     rooms.shift(2)
     gas = trucks.css("tr").css(".shaded")[4].text.split("\n")
     gas.pop
     gas.shift(2)
     
     names.each do |n|
       Truck.new(n.strip)   
      end
      
      rooms.each_with_index do |r,index|
        room = Room.new(r.strip)
        truck = Truck.all[index]
        truck.room = room 
      end
      gas.each_with_index do |g,index|
        gas = Gas.new(g.strip)
        gas = Truck.all[index]
        gas.room = gas
      end 
      binding.pry
  end 
end

