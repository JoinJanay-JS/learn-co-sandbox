require 'open-uri'
require 'nokogiri'
#require 'pry'

class Scraper 
#binding.pry 
	#html = open("https://www.pensketruckrental.com/moving-trucks/#chart") #returns tempfile 
  # Nokogiri::HTML(html)

  def self.scrap_the_page(index_url)
  doc = Nokogiri::HTML(open("https://www.pensketruckrental.com/moving-trucks/#chart"))
  recommendations = []
  
  doc.css('.content').each do |recommendation|
  vehicles = doc.css('.topic').attribute('.href').value #gives me the facts and features portion - name of vehicles
  rooms = doc.css('.shaded').int #gives me the room capacity 

	#document = open("https://www.pensketruckrental.com/moving-trucks/#chart")  #sets tempfile from above to document
	#content = document.read  ##inspect the webpage
 
#parsed_content = Nokogiri::HTML(content) 
#parsed_content.css('.content') 
#parsed_content.css('.content').css('.table') #returns blank

#parsed_content.css('.content').css('.row').css('.hdrlink') #returns blank

vehicles << rooms
end 
vehicles 
end



#@@all = []

#def initialize

#end 

#def recommend_vehicle
 #puts "How many rooms are you moving?"
 #input 
#end 
#def vehicles
#end 
end 