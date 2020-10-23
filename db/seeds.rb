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
Activity.destroy_all

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
        category: "mood",
        user: ariba
    )
end

Activity.create(name: 'Take a nice cool or steaming hot shower. Whichever you prefer!', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Light your favorite smelling candle.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Practice some deep breathing exercises.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Roll out your yoga mat or towel and do some yoga. Follow a Youtube video if you are out of inspiration.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Go for a run, jog, or power-walk outside. Whatever you are feeling.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Read a book.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Write- if you need inspiration start with three things you are grateful for.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Apply your favorite face mask.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Manicure time! Cut, file, and or paint your nails and toes.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Litsen, write, or create some music.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Make a cup of tea or hot chocolate.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Whip up your favorite cooking recipe.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Bake some cookies! Or whatever your sweet tooth is craving!', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Decorate your room with some plants.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Draw, doodle, or paint.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Take a nap.' , date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Grab a blanket, popcorn, and throw on your favorite movie or TV show.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Watch a TED Talk on something you are passionate about.', category: "activity", user:ariba)
Activity.create(name: 'Put on your favorite clothes and get dressed for no reason.' , date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
Activity.create(name: 'Travel to somewhere scenic near you.', date: (Faker::Date.between(from: 1.year.ago, to: Date.today)).to_datetime, category: "activity", user:ariba)
puts "finish loading data"
