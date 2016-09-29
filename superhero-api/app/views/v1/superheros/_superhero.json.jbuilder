json.id superhero.id
json.name superhero.name
json.power superhero.power

json.addresses superhero.addresses do |address|
  if address.zip.length == 5
    json.address_1 address.address_1
    json.address_2 address.address_2
    json.city address.city
    json.state address.state
    json.zip address.zip
  end
end