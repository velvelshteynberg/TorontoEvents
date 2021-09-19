# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.delete_all
User.delete_all
HostOrganization.delete_all
Caterer.delete_all

event1 = Event.create(host_organization_id: 1, user_id: 100, name: 'The Final Countdown', description: 'This is the event to be at', is_approved: false, does_require_update: false)
user = User.create(id: 100, phone: '6466466466', password: 'greatness', is_subscribed: false, admin: false, username: "John Doe", email: 'velvelshteynberg@outlook.com')
Caterer.create(name: 'Elite Salads', website: 'WWW.elitesalads.com', email: 'elite@salads.com', mailing_address: '99 Bathurst street', phone_number: '111-222-3333', description: 'Our salads and meats are amazing!!!!!!!!!!!')
HostOrganization.create(name: 'Chai Lifeline', website: 'WWW.ChaiLIfeline.com', email: 'chai@lifeline.com', )
Event.create(name: 'The greatest show ever')
