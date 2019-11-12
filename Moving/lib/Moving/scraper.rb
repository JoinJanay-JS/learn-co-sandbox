class Scraper 
attr_accessor :parse_page

  def self.scrape_the_page()
    doc = HTTParty.get("https://www.pensketruckrental.com/moving-trucks/#chart")
    @parse_page ||= Nokogiri::HTML(doc)
  end

  def self.moving
    binding.pry
     trucks = self.scrape_the_page.css(".view-trucks.border-bottom-none")
     names = trucks.css("tr")[0].attribute(".href")
     binding.pry
     #rooms = .css('.')
  end 
.
end


def get_truck
  
end