# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Supplier.destroy_all
Article.destroy_all
Compagny.destroy_all
puts 'No Compagnies Existing!'
puts 'No Suppliers Existing !'
puts 'No Articles Existing!'

puts 'creating Compagies'
dentidis = Compagny.create!(
  name: 'Dentidis',
  address: '8 chemin des tards venus, 69530 BRIGNAIS',
  phone: '0472399040'
)
puts 'Creating 4 fake suppliers...'

4.times do
  Supplier.create!(
  name: Faker::Company.name,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  email: Faker::Internet.email,
  phone: Faker::PhoneNumber.phone_number,
  compagny_id: "#{dentidis.id}"

)
end


puts 'Finished!'

puts 'Creating 100 fake articles'

100.times do
  Article.create!(
  name: Faker::Company.name,
  designation: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  colour: Faker::Internet.email,
  phone: Faker::PhoneNumber.phone_number,
  purchase_price: Faker::Company.name,
  sale_price: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  co: Faker::Internet.email,
  phone: Faker::PhoneNumber.phone_number,
  compagny_id: "#{(Supplier.all).to_a.sample.id}"

)
end
