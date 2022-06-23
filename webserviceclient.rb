require 'pp'
require 'json'

require 'leaflet'

require 'net/http' #gem isntall net


uri = URI("https://api.citybik.es/v2/networks")
response = Net::HTTP.get_response(uri)



p"****************************************************************************************"

data = JSON.parse(response.body)

p data["networks"][1]

for key, value in data["networks"][1]
  p "#{key} => #{value}"
  if key == "location"
    p data["networks"][1]["location"]["latitude"]
    p data["networks"][1]["location"]["longitude"]
  end
end

#initalize a map leaflet
#https://leafletjs.com/examples/quick-start/
