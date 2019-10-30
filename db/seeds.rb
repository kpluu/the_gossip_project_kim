require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gossip.destroy_all
User.destroy_all
City.destroy_all
Mark.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all


10.times do |index|
  c = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Code.nric)
  u = User.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, description: Faker::Movie.quote, email: Faker::Internet.email, age: Faker::Number.between(from: 20, to: 50), city_id: c.id)
  g = Gossip.create(title: Faker::Movie.quote, content: Faker::Verb.ing_form, user_id: u.id)
end

10.times do |index|
  t = Tag.create(title: Faker::Movie.name)
  m = Mark.create(gossip_id: index+1, tag_id: t.id)
end

5.times do |index|
  pm = PrivateMessage.create(content: Faker::Movie.quote, recipient_id: index+1, sender_id: index+1 )
end