# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
quality = ['Laid back', 'Clean & organized', 'Party-ready', 'Cozy']
place = ['house', 'apartment', 'mansion', 'room']
distance = ['near', 'in front of', 'beside', 'around']
price = (50..200).to_a
guests = (1..5).to_a

4.times do
  Flat.create!(
    name: "#{quality.sample} #{place.sample} #{distance.sample} #{Faker::Address.community}",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: price.sample,
    number_of_guests: guests.sample,
    picture_url: "https://source.unsplash.com/1500x1000/?room"
  )
end
