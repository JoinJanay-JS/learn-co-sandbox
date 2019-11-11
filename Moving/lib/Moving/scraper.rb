class Scraper 

 def self.scrap_the_page(index_url)
  doc = Nokogiri::HTML(open("https://www.pensketruckrental.com/moving-trucks/#chart"))
end

  recommendations = []
  def trucks
      doc.css('.content').each do |content|
        trucks = Truck.new
      trucks.name = doc.css('.topic').attribute('.href').value 
      trucks.rooms = doc.css('.shaded').int 
      trucks.gas = doc.css('.object')
    #trucks << rooms
  end 
Truck.new 
end
end

def get_truck
  
end