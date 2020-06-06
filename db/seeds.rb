# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




oliver = User.create( username: 'Oliver', password: 'password' )
felix = User.create( username: 'Felix', password: 'password' )
orga = User.create( username: 'orga', password: 'password' )
jhon = User.create( username: 'jhon', password: 'password' )
lorus = User.create( username: 'lorus', password: 'password' )
demetri = User.create( username: 'demetri', password: 'password' )



fact_one = Fact.create( fact: 'Wiley Hardeman Post was the first pilot to fly solo around the world.', likes: 1, user_id: 1 )
fact_two = Fact.create( fact: 'This is a lovely day, this is alovely night', likes: 1, user_id: 2 )
fact_three = Fact.create( fact: 'Let goooooo , likes: 1, user_id: 1',likes: 1, user_id: 3 )
