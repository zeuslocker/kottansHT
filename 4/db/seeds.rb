# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Start'

10.times do |iteration|
  Post.create(title: Faker::Hipster.word, body: Faker::Hipster.sentence, user_id: iteration + 1)
  puts "#{iteration + 1} post created"
end

puts 'End'
