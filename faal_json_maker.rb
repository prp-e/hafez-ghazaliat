require 'json'

faal_file = File.open("faal.txt", "r")

faal = []

for line in faal_file.readlines do 
    faal << line 
end 

for item in 0..494 do 
    item = item +1 
    puts "#{item} : #{faal[item - 1]}"
end 