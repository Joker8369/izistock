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
Category.destroy_all
ArticleCategory.destroy_all
puts 'No Compagnies Existing!'
puts 'No Suppliers Existing !'
puts 'No Articles Existing!'
puts 'No Compagny Existing!'

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

puts 'Creating 100 fake articles ...'

100.times do
  Article.create!(
  name: Faker::Book.title,
  designation: Faker::Lorem.paragraph,
  colour: Faker::Color.color_name,
  purchase_price: Faker::Number.number(digits: 2),
  sale_price: Faker::Number.number(digits: 3),
  code: Faker::Number.number(digits: 8) ,
  quantity: Faker::Number.number(digits: 1) ,
)
end

puts 'Finished!'

puts 'Creating 4 fake categories ...'

4.times do
  Category.create!(
  name: Faker::Books::CultureSeries.civ,
  compagny_id: "#{dentidis.id}"

)
end

puts 'Finished!'


array_articles = Article.all.to_a

while array_articles != []
ArticleCategory.create!(article: array_articles.last, category: Category.all.to_a.sample)
ArticleCategory.create!(article: array_articles.last, category: Category.all.to_a.sample)
var1 = ArticleCategory.all.to_a[-2]
var2 = ArticleCategory.all.to_a[-1]

  if var1.category_id == var2.category_id
    ArticleCategory.all.to_a.last.delete
    array_articles.pop
  else
    array_articles.pop
  end
end

puts 'ArticleCategory'
