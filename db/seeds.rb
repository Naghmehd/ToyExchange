# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: 'Usha', password: "password", password_confirmation: 'password', zip_code:78701, email: '1test@example.com')
User.create!(username: 'Ajay', password: "password", password_confirmation: 'password', zip_code:78702, email: '2test@example.com')
User.create!(username: 'Zach', password: "password", password_confirmation: 'password', zip_code:78703, email: '3test@example.com')
User.create!(username: 'Sam', password: "password", password_confirmation: 'password', zip_code:78704,  email: '4test@example.com')
User.create!(username: 'Lily', password: "password", password_confirmation: 'password', zip_code:78701,  email: '5test@example.com')
User.create!(username: 'Cameron', password: "password", password_confirmation: 'password', zip_code:78705, email: '6test@example.com')
User.create!(username: 'Zeeshan', password: "password", password_confirmation: 'password', zip_code:78706, email: '7teest@example.com')
User.create!(username: 'Shilpa', password: "password", password_confirmation: 'password', zip_code:78701, email: '8test@example.com')
User.create!(username: 'Zareen', password: "password", password_confirmation: 'password', zip_code:78702, email: '9test@example.com')
User.create!(username: 'Robert', password: "password", password_confirmation: 'password', zip_code:78707, email: '10est@example.com')

Toy.create!(brand: 'Baby Einstein', category: 'Baby Toy', condition: 'Like New', description: Faker::Lorem.sentence, name:'Rattle', age_group: '0-1 yr', profile_image: '/assets/toy2.png')
Toy.create!(brand: 'Barbie', category: 'Doll', condition: 'Like New', description: Faker::Lorem.sentence, name:'Barbie', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Bright starts', category: 'Activity & Learning', condition: 'Good Condition', description: 'Faker::Lorem.sentence', name:'Flash Card', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'crayola', category: 'Art & Craft', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'Paint Train', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'Disney', category: 'Doll', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'Elmo', age_group: '1-2yrs', profile_image: '')
Toy.create!(brand: 'Disney Pixar', category: 'Game', condition: 'Like New', description: Faker::Lorem.sentence, name:'Game Disc', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Educational Insights', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'Flash Card', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'EeBoo', category: 'Baby Toy', condition: 'Like New', description: Faker::Lorem.sentence, name:'Rattle', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Elenco', category: 'Game', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'Game On', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'First Learning', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'Phonics', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'Fisher - Price', category: '', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'Glow Train', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Good Grades', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'Numbers', age_group: '2-4yr', profile_image: '')
Toy.create!(brand: 'Hooked on Phonics', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'Letters', age_group: '2-4yrs', profile_image: 'v')
Toy.create!(brand: 'Infantino', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'AAAA', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Lakeshore', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'BBB', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'Lamaze', category: 'Baby Toy', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'CCC', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'LeapFrog', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'DDD', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Learning Resources', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'EE', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Little Pim', category: 'Baby Toy', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'FFF', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Little Tikes', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'GGG', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Manhattan Toys', category: 'Baby Toy', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'HHH', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Martin Designs', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'JJJ', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Marvel', category: 'Doll', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'KKK', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Mead', category: '', condition: 'Like New', description: '', name:'LLL', age_group: '90+', profile_image: '')
Toy.create!(brand: 'Melissa & Doug', category: 'Art & Craft', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'TTT', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Nickelodeon', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'III', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Plan Toys', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'WWW', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Play Right', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'RRR', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Playskool', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'SSS', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Quantum Leao', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'MMM', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Scholastic', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'PPP', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Sesame Street', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'DDD', age_group: '4-8yrs', profile_image: '')
Toy.create!(brand: 'Tabeo', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'QQQ', age_group: '9', profile_image: '')
Toy.create!(brand: 'The learning Journy', category: 'Activity & Learning', condition: '', description: Faker::Lorem.sentence, name:'UUU', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'Tara Toy', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'OOO', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Trend', category: 'Activity & Learning', condition: 'Like New', description: Faker::Lorem.sentence, name:'CCC', age_group: '9', profile_image: '')
Toy.create!(brand: 'VTech', category: 'Activity & Learning', condition: 'Good Condition', description: Faker::Lorem.sentence, name:'BBB', age_group: '2-4yrs', profile_image: '')
Toy.create!(brand: 'Whisper Phone', category: 'Baby Toy', condition: 'Like New', description: Faker::Lorem.sentence, name:'NNN', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Workman', category: 'Art & Craft', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'MMM', age_group: '11yr', profile_image: '')
Toy.create!(brand: 'iTikes', category: 'Activity & Learning', condition: 'Fair Condition', description: Faker::Lorem.sentence, name:'RRR', age_group: '0-1yr', profile_image: '')
Toy.create!(brand: 'Baby Einstein', category: 'Baby Toy', condition: 'Like New', description: Faker::Lorem.sentence, name:'ZZZ', age_group: '0-1yr', profile_image: '')
