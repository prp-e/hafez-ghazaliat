require 'json'

faal_file = File.open("faal.txt", "r")

faal = []

for line in faal_file.readlines do 
    faal << line 
end 

puts faal 