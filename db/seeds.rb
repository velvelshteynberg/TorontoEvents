# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HostOrganization.delete_all
Caterer.delete_all
Event.delete_all
User.delete_all


ho1= HostOrganization.create(name: 'Chai Lifeline Canada', website: 'https://chailifelinecanada.org', email: 'cageneral@chailifeline.org',
 mailing_address: '300A Wilson Ave. Toronto, Ontario, M3H 1S8', phone_number: '647.430.5933', description: 'When a child is born 
 or diagnosed with a serious illness, we know that the illness impacts not just the person who is sick, but their entire family. 
 Chai Lifeline Canada has given thousands of families the concrete services and emotional support that enables patients, siblings, and parents to find hope and joy in their lives.')
ho2= HostOrganization.create(name: 'Yeshiva Yesodei HaTorah', website: 'https://yesodeihatorah.ca', email: 'office@yesodeihatorah.ca',
 mailing_address: '77 Glenrush Blvd. Toronto ON M5N 2T8', phone_number: '416.787.1101', description: 'A Jewish Religious private school for boys only- from preschool age through grade 8.')
ho3= HostOrganization.create(name: 'Bikur Cholim', website: 'https://www.bikurcholim.ca', email: 'info@bikurcholim.ca', 
 mailing_address: '506 Coldstream Ave. Toronto, Ontario M6B 2K6', phone_number: '416.783.7983', description: 'Helping. Healing. Caring is the slogan. It is the mission of Bikur Cholim to provide assistance to
 community members in medical or family crises.' )
ho4= HostOrganization.create(name: 'Hatzoloh', website: 'https://www.hatzolohtoronto.org', email: 'office@hatzolohtoronto.org', 
 mailing_address: '91 Stormont Ave. Toronto, ON M5N 2C3', phone_number: '*office line* 416-398-2300', description: 'Hatzoloh Toronto operates 24 hours a day, seven days a week. We respond in the GTA to approximately 1500 – 2000 calls annually. 
 We complement Toronto’s ambulance service with rapid, high-quality, non-transport care within minutes of being dispatched. Hatzoloh Toronto also ensures that 911 has been called. Hatzoloh Toronto’s responders stay with a patient until the ambulance arrives, ensuring that a transfer of care to ambulance paramedics occurs.' )
ho5= HostOrganization.create(name: 'NCSY Canada', website: 'https://canada.ncsy.org', email: 'programming@ncsy.ca', 
  mailing_address: '4600 Bathurst St. Toronto, ON M2R3V2', phone_number: '905.761.6279', description: 'NCSY Canada is dedicated to ensuring the future of the Jewish people. 
  We secure that future through building relationships with Jewish teens; increasing Jewish literacy by teaching them about their heritage and traditions; establishing lifelong connections to the Jewish people and Israel; and enhancing Jewish teens’ growth in Judaism.' )
ho6= HostOrganization.create(name: "Kayla's Children Centre (KCC)", website: 'https://kaylaschildrencentre.org', email: 'office@kaylaschildrencentre.org', 
  mailing_address: '36 Atkinson Avenue, Thornhill, ON L4J 8C9', phone_number: '905.738.5542', description: 'Our mission is to provide high-quality, cutting-edge educational, therapeutic, and recreational programs for infants, children and teens with special needs, and to assist their families by offering support and respite. The Centre embraces children of all abilities, religious affiliations and needs, and is rich in Jewish education and tradition.' )
ho7= HostOrganization.create(name: 'Ashreinu', website: 'http://www.campashreinu.ca', email: 'campashreinu123@gmail.com', mailing_address: '410 Lawrence Ave. W. Toronto, Ontario M5M 1C2', 
phone_number: '416-787-1489', description: 'A unique year-round program for Jewish girls that has been instilling Jewish pride and values since 1994. Ashreinu programs include Shabbatons, trips, carnivals, parties, and a sunday school, day camp and overnight camp. A year with Ashreinu is packed with fun and excitement, all in a warm, friendly Jewish environment that will make you feel like you’re among family.' )

caterer1= Caterer.create(name: 'Jacobs Catering', website: 'https://www.jacobscatering.ca', email: 'info@jacobscatering.ca',
 phone_number: '905.886.3832', description: 'Jacobs Catering is a name that continues to stand for quality, elegance and caring. 
 When we provide catering for your simcha you will enjoy a hassle-free event which comes from over 45 years of experience in the Toronto Community. 
 We pay attention to even the smallest detail to reflect your individual tastes, adding those special touches that will make your occasion a one-of-a-kind event.')
caterer2= Caterer.create(name: 'Mitzuyan Kosher Catering', website: 'https://mitzuyankoshercatering.com', email: 'norman@mitzuyankoshercaterer.com',
 mailing_address: '173 Dolomite Drive Toronto ON M3J 2N1', phone_number: '416-419-5260', description: 'Mitzuyan is a full service kosher catering company serving Toronto, Vaughan, Richmond Hill, Markham, Mississauga and other municipalities in the region.')
caterer3= Caterer.create(name: "Ely's Fine Foods", website: 'https://elysfinefoods.com', email: 'catering@elysfinefoods.com',
 mailing_address: '3537 Bathurst St. Toronto, ON M6A 2C6', phone_number: '416.782.3231', description: 'From our take out retail location, where all our food is made fresh daily, to our exceptional catering services, or even our wholesale packaged foods, you are sure to experience the convenience and flavorsome food prepared by Ely’s Fine Foods. With a focus on locally sourced and seasonal ingredients, we bring our best to every event and every meal, treating it as if it were our own.')
caterer4= Caterer.create(name: 'Milk n honey', website: 'https://milknhoney.ca', email: 'order@milknhoney.ca', mailing_address: '3457 Bathurst Street North York, ON M6A 2C5',
 phone_number: '416.789.7651', description: 'Kosher Restaurant and Catering in Toronto with outstanding service.')
caterer5= Caterer.create(name: 'Menchens Catering', website: 'https://menchens.ca', email: 'naomi@menchens.ca', phone_number: '416-638-8381', 
 description: 'Our cuisine coordinators will develop delicious menus, customized for your individual tastes and palates. We will also be happy to coordinate an array of other event needs, such as tablecloth rentals, floral arrangements and musicians.
 We are renowned for the elegance of our food presentation, which is always complimented by the highest standards of culinary excellence. 
 Only the freshest ingredients are incorporated in our dishes, from our succulent meats to our decadent desserts. An affair catered by Menchen’s will leave a lasting impression on all who attend.')
caterer6= Caterer.create(name: 'Lechaim Catering', website: 'https://lechaimcatering.com', mailing_address: '868 Magnetic Drive, 
 Toronto, Ontario M3J 2S2, Canada', phone_number: '416.650.5440')
caterer7= Caterer.create(name: 'Pantry', website: 'https://www.pantryfoods.ca', email: 'orders@pantryfoods.ca', 
 mailing_address: '3456 Bathurst St, Toronto ON', phone_number: '416.785.0996', description: 'Our philosophy is to provide fresh, tasty, wholesome, straightforward, innovative food. 
 Our menus showcase an array of dairy and vegetarian delights.'


user = User.create(id: 100, phone: '6466466466', password: 'greatness', is_subscribed: false, admin: false, username: "John Doe", email: 'velvelshteynberg@outlook.com')