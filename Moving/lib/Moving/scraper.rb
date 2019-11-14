class Scraper 
attr_accessor :parse_page

  def self.scrape_the_page()
    doc = HTTParty.get("https://www.pensketruckrental.com/moving-trucks/#chart")
    @parse_page ||= Nokogiri::HTML(doc)
  end

  def self.moving
     trucks = self.scrape_the_page.css(".view-trucks.border-bottom-none")
     names = trucks.css("tr")[0].text.split("\n")
     names.shift(2)
     rooms = trucks.css("tr")[1].text.split("\n")
     rooms.shift(2)
     gas = trucks.css("tr").css(".shaded")[4].text.split("\n")
     gas.shift(2)
  end 
end 
