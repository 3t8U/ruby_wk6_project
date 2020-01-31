# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



  Park.destroy_all
  Restaurant.destroy_all
  Shop.destroy_all


rand(3..15).times do |index|
Park.create!(
    name: Faker::Verb.unique.base.capitalize() + " Park",
      location: Faker::Address.unique.street_address,
        description: Faker::ChuckNorris.unique.fact
    )
end

rand(2..13).times do |index|
Restaurant.create!(
    name: Faker::Kpop.unique.boy_bands,
      location: Faker::Address.unique.street_address,
        description: Faker::Dessert.unique.variety + " & " + Faker::Food.unique.ingredient
    )
end

rand(7..23).times do |index|
Shop.create!(
    name: Faker::Cannabis.unique.brand,
      location: Faker::Address.unique.street_address,
        description: Faker::Commerce.unique.department(max: 1, fixed_amount: true)
    )
end


  p "Created #{Park.count} parks"
  p "Created #{Restaurant.count} restaurants"
  p "Created #{Shop.count} shops"






# 15.times do |index|
#   groups = []
#   groups.push(Group.create!(name: Faker::TvShows::BreakingBad.episode,
#     genre: Faker::Lorem.words(number: 1, supplemental: true)))
#     groups
#     rand(3..15).times do |message|
#       groups.each do |group|
#         Message.create! :author => Faker::Superhero.name, :content =>  Faker::Movie.quote,
#         :group_id => group.id
#       end
#     end
#   end
#   p "Created #{Group.count} groups"
