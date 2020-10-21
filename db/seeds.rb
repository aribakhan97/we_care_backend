# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start loading data"
Activity.destroy_all
Mood.destroy_all
User.destroy_all

ariba = User.create!(name: "Ariba")

Mood.create(mood_level: 1, user: ariba)
Mood.create(mood_level: 2, user: ariba)
Mood.create(mood_level: 3, user: ariba)
Mood.create(mood_level: 4, user: ariba)
Mood.create(mood_level: 5, user: ariba)
Mood.create(mood_level: 6, user: ariba)
Mood.create(mood_level: 7, user: ariba)
Mood.create(mood_level: 8, user: ariba)
Mood.create(mood_level: 9, user: ariba)
Mood.create(mood_level: 10, user: ariba)

Activity.create(name: 'Take a nice cool or steaming hot shower. Whichever you prefer!', user:ariba)
Activity.create(name: 'Light your favorite smelling candle.', user:ariba)
Activity.create(name: 'Practice some deep breathing exercises.', user:ariba)
Activity.create(name: 'Roll out your yoga mat or towel and do some yoga. Follow a Youtube video if you are out of inspiration.', user:ariba)
Activity.create(name: 'Go for a run, jog, or power-walk outside. Whatever you are feeling.', user:ariba)
Activity.create(name: 'Read a book.', user:ariba)
Activity.create(name: 'Write- if you need inspiration start with three things you are grateful for.', user:ariba)
Activity.create(name: 'Apply your favorite face mask.', user:ariba)
Activity.create(name: 'Manicure time! Cut, file, and or paint your nails and toes.', user:ariba)
Activity.create(name: 'Litsen, write, or create some music.', user:ariba)
Activity.create(name: 'Make a cup of tea or hot chocolate.', user:ariba)
Activity.create(name: 'Whip up your favorite cooking recipe.', user:ariba)
Activity.create(name: 'Bake some cookies! Or whatever your sweet tooth is craving!', user:ariba)
Activity.create(name: 'Decorate your room with some plants.' , user:ariba)
Activity.create(name: 'Draw, doodle, or paint.' , user:ariba)
Activity.create(name: 'Take a nap.' , user:ariba)
Activity.create(name: 'Grab a blanket, popcorn, and throw on your favorite movie or TV show.', user:ariba)
Activity.create(name: 'Watch a TED Talk on something you are passionate about.', user:ariba)
Activity.create(name: 'Put on your favorite clothes and get dressed for no reason.' , user:ariba)
Activity.create(name: 'Travel to somewhere scenic near you.', user:ariba)


puts "finish loading data"
