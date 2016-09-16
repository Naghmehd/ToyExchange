# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: 'Naghmeh', password: "password", password_confirmation: 'password', street: '4910 Rollingwood drive', city: 'Austin', state: 'TX', zip: '78746', email: '1test@example.com', admin: true)
User.create!(username: 'Colin', password: "password", password_confirmation: 'password', street: '1801 Rio Grande Street', city: 'Austin', state: 'TX', zip: '78701', email: '2test@example.com', admin: false)


Toy.create!(user_id: User.pluck(:id).sample, brand: 'Baby Einstein', category: 'Baby Toys', condition: 'Like New', description: Faker::Lorem.sentence, name:'Rattle', age_group: '0-1 yr', profile_image: '/assets/toy2.png')
Toy.create!(user_id: User.pluck(:id).sample, brand: 'Barbie', category: 'Doll', condition: 'Like New', description: Faker::Lorem.sentence, name:'Barbie', age_group: '4-8yrs', profile_image: '/assets/toy3.png')
Toy.create!(user_id: User.pluck(:id).sample, brand: 'Bright starts', category: 'Activity & Learning', condition: 'Good Condition', description: 'Faker::Lorem.sentence', name:'Flash Card', age_group: '2-4yrs', profile_image: '/assets/toy4.png')
Toy.create!(user_id: User.pluck(:id).sample, brand: 'crayola', category: 'Art & Craft', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'Paint Train', age_group: '2-4yrs', profile_image: '/assets/toy5.png')
