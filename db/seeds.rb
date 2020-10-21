# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start loading data"

Mood.destroy_all
User.destroy_all

ariba = User.create!(name: "Ariba")

# Mood.create(mood_level: 1, user: ariba)
# Mood.create(mood_level: 2, user: ariba)
# Mood.create(mood_level: 3, user: ariba)
# Mood.create(mood_level: 4, user: ariba)
# Mood.create(mood_level: 5, user: ariba)
# Mood.create(mood_level: 6, user: ariba)
# Mood.create(mood_level: 7, user: ariba)
# Mood.create(mood_level: 8, user: ariba)
# Mood.create(mood_level: 9, user: ariba)
# Mood.create(mood_level: 10, user: ariba)

20.times do
    Mood.create(
        mood_level: rand(10) + 1,
        date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime,
        user: ariba
    )
end

puts "finish loading data"
