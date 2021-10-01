# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.delete_all
event1 = Event.create(name: "The Event", address: '18 Rockford rd', start_date: '2021-01-01')
event2 = Event.create(name: "The Show", address: '18 Dewlane rd', start_date: '2021-02-02')