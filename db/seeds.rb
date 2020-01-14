# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gun_bunch = Formation.create(name: 'Gun Bunch', playbook: 'Denver Broncos Offense')
gun_y_trips_wk = Formation.create(name: 'Gun Y Trips Wk', playbook: 'Denver Broncos Offense')

plays = Play.create([
    { name: 'Z Spot', setup: "Y-BLOCK, A-STREAK, X-IN, B-FADE", formation: gun_bunch },
    { name: 'Strong Flood', setup: 'B-MOTION LEFT - HIKE JUST BEFORE HE REACHES (RB)', formation: gun_y_trips_wk }
])