require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://hafez-fal.ir/ghazal/001"))
events_handler = doc.css("div.int-body")

events_handler.each do |e| 
    puts e.css("p")
end 