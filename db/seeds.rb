# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.delete_all
User.delete_all
event1 = Event.create(host_organization_id: 1, user_id: 100, name: 'The Final Countdown', description: 'This is the event to be at', is_approved: false, does_require_update: false)
user = User.create(id: 100, username: "Greatness", email: 'velvelshteynberg@gmail.com')
user.save
