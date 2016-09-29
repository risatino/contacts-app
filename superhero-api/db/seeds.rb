# 100.times do
#   name = Faker::Superhero.name
#   power = Faker::Superhero.power

# Superhero.create(
#   name: name,
#   power: power
#   )
# end

200.times do
Address.create(
              address_1: Faker::Address.street_address,
              address_2: Faker::Address.secondary_address,
              city: Faker::Address.city,
              state: Faker::Address.state,
              zip: Faker::Address.zip,
              superhero_id: Superhero.all.sample.id
              )
end