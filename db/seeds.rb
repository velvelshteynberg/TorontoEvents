# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Caterer.delete_all
Caterer.create(name: 'Elite Salads', website: 'WWW.elitesalads.com', email: 'elite@salads.com', mailing_address: '99 Bathurst street', phone_number: '111-222-3333', description: 'Our salads and meats are amazing!!!!!!!!!!!')