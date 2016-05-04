# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: 'Usha', password: "password", password_confirmation: 'password', zip_code:78701, email: 'Test@example.com')
User.create!(username: 'Ajay', password: "password", password_confirmation: 'password', zip_code:78702, email: 'Aest@example.com')
User.create!(username: 'Zach', password: "password", password_confirmation: 'password', zip_code:78703, email: 'best@example.com')
User.create!(username: 'Sam', password: "password", password_confirmation: 'password', zip_code:78704,  email: 'cest@example.com')
User.create!(username: 'Lily', password: "password", password_confirmation: 'password', zip_code:78701,  email: 'qest@example.com')
User.create!(username: 'Cameron', password: "password", password_confirmation: 'password', zip_code:78705, email: 'pest@example.com')
User.create!(username: 'Zeeshan', password: "password", password_confirmation: 'password', zip_code:78706, email: 'mest@example.com')
User.create!(username: 'Shilpa', password: "password", password_confirmation: 'password', zip_code:78701, email: 'vest@example.com')
User.create!(username: 'Zareen', password: "password", password_confirmation: 'password', zip_code:78702, email: 'fest@example.com')
User.create!(username: 'Robert', password: "password", password_confirmation: 'password', zip_code:78707, email: 'xest@example.com')

Toy.create!(brand: 'Baby Einstein', category: 'Baby Toy', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'Rattle', age_group: '0-1 yr', picture_url: '')
Toy.create!(brand: 'Barbie', category: 'Doll', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'Barbie', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Bright starts', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'Flash Card', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'crayola', category: 'Art & Craft', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'Paint Train', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Disney', category: 'Doll', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'Elmo', age_group: '1-2yrs', picture_url: '')
Toy.create!(brand: 'Disney Pixar', category: 'Game', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'Game Disc', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Educational Insights', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'Flash Card', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'EeBoo', category: 'Baby Toy', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'Rattle', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Elenco', category: 'Game', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'Game On', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'First Learning', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'Phonics', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Fisher - Price', category: '', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'Glow Train', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Good Grades', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'Numbers', age_group: '2-4yr', picture_url: '')
Toy.create!(brand: 'Hooked on Phonics', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'Letters', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Infantino', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'AAAA', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Lakeshore', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'BBB', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Lamaze', category: 'Baby Toy', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'CCC', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'LeapFrog', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'DDD', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Learning Resources', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'EE', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Little Pim', category: 'Baby Toy', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'FFF', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Little Tikes', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'GGG', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Manhattan Toys', category: 'Baby Toy', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'HHH', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Martin Designs', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'JJJ', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Marvel', category: 'Doll', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'KKK', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Mead', category: '', condition: 'Like New', description: '', name:'LLL', age_group: '90+', picture_url: '')
Toy.create!(brand: 'Melissa & Doug', category: 'Art & Craft', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'TTT', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Nickelodeon', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'III', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Plan Toys', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'WWW', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Play Right', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'RRR', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Playskool', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'SSS', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Quantum Leao', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'MMM', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Scholastic', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'PPP', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Sesame Street', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'DDD', age_group: '4-8yrs', picture_url: '')
Toy.create!(brand: 'Tabeo', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'QQQ', age_group: '9', picture_url: '')
Toy.create!(brand: 'The learning Journy', category: 'Activity & Learning', condition: '', description: 'xxxxxxxxxxxx', name:'UUU', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Tara Toy', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'OOO', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Trend', category: 'Activity & Learning', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'CCC', age_group: '9', picture_url: '')
Toy.create!(brand: 'VTech', category: 'Activity & Learning', condition: 'Good Condition', description: 'xxxxxxxxxxxx', name:'BBB', age_group: '2-4yrs', picture_url: '')
Toy.create!(brand: 'Whisper Phone', category: 'Baby Toy', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'NNN', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Workman', category: 'Art & Craft', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'MMM', age_group: '11yr', picture_url: '')
Toy.create!(brand: 'iTikes', category: 'Activity & Learning', condition: 'Fair Condition', description: 'xxxxxxxxxxxx', name:'RRR', age_group: '0-1yr', picture_url: '')
Toy.create!(brand: 'Baby Einstein', category: 'Baby Toy', condition: 'Like New', description: 'xxxxxxxxxxxx', name:'ZZZ', age_group: '0-1yr', picture_url: '')
