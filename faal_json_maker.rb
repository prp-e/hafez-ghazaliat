require 'json'

faal_file = File.open("faal.txt", "r")

faal = []
faal_json = {}

for line in faal_file.readlines do 
    faal << line 
end 

for item in 0..494 do 
    item = item +1 
    faal_json[item.to_s] = faal[item - 1]
end 

faal_json = faal_json.to_json 

results = File.open("faal.json", "w")
results.write(faal_json)