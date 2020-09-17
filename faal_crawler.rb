require 'nokogiri'
require 'open-uri'

faal = [] 

for ghazal_id in 0..494 do 
    ghazal_id = ghazal_id + 1 
    if ghazal_id < 10
        doc = Nokogiri::HTML(open("http://hafez-fal.ir/ghazal/00#{ghazal_id}"))
        events_handler = doc.css("div.int-body")
        
        events_handler.each do |e|
            faal << e.css("p")
            puts "Working on #{ghazal_id}"
        end
    elsif ghazal_id < 100
        doc = Nokogiri::HTML(open("http://hafez-fal.ir/ghazal/0#{ghazal_id}"))
        events_handler = doc.css("div.int-body")
        
        events_handler.each do |e|
            faal << e.css("p")
            puts "Working on #{ghazal_id}"
        end 
    else 
        doc = Nokogiri::HTML(open("http://hafez-fal.ir/ghazal/#{ghazal_id}"))
        events_handler = doc.css("div.int-body")
        
        events_handler.each do |e|
            faal << e.css("p")
            puts "Working on #{ghazal_id}"
        end
    end
    sleep 0.25
end 

puts faal