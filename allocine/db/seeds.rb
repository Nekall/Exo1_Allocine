# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Movie.destroy_all


100.times do
  Movie.create([{
  name: Faker::Movie.title,
  year: Faker::Number.within(range: 1900..2020) ,
  allocine_rating: Faker::Number.between(from: 0.0, to: 5.0).round(2),
  genre: ["action", "horreur", "comédie", "drame"].sample,
  my_rating: nil,
  already_seen: false,
  director: Faker::Name.name,
  synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 7)
  }])
end

puts "Films OK"
