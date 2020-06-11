# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.create({
    name: 'K-9 Resort Daycare & Luxury Hotel', 
    location: 'New Jersey, USA',
    activities: 'Swimming, Doggie Ice Cream Socials, Frisbee'    
    })

Hotel.create({
    name: 'Jet Pet Resort', 
    location: 'Vancouver, Canada',
    activities: 'Private dog walks, luxury pet spa offering doggy massages and manicures'    
    })

Hotel.create({
    name: 'The Wags Club', 
    location: 'California, USA',
    activities: 'Swimming, Doggy Dances with music, pet concierge services'    
    })    
    