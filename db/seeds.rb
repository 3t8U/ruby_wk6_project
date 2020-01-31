# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  Park.destroy_all
  Restaurant.destroy_all
  Shop.destroy_all


  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    rand(3..15).times |i|
      park = Park.create!(
        location: Faker::Book.author,
          description: Faker::Movie.quote
      )
      puts "Park #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
    end
  end
end

Seed.begin




15.times do |index|
  groups = []
  groups.push(Group.create!(name: Faker::TvShows::BreakingBad.episode,
    genre: Faker::Lorem.words(number: 1, supplemental: true)))
    groups
    rand(3..15).times do |message|
      groups.each do |group|
        Message.create! :author => Faker::Superhero.name, :content =>  Faker::Movie.quote,
        :group_id => group.id
      end
    end
  end
  p "Created #{Group.count} groups"
