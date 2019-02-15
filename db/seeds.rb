# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(forename: "Simon", surname: "Green", username: "sgreen", password: "password123", email: "simon.green@gmail.com")
User.create(forename: "Brooke", surname: "Woolley", username: "bwoolley", password: "password456", email: "b.w@gmail.com")
User.create(forename: "David", surname: "Mears", username: "dmears", password: "password876", email: "d.mears@gmail.com")
Space.create(name: "Dirty Hovel", description: "A charming rat infested hovel with space for 2", price: "24.99", user_id: "1")
Space.create(name: "Castle", description: "A big castle with fireplace and moat", price: "85.99", user_id: "1")
Space.create(name: "Bijou pit", description: "Small pit with a lot of potential", price: "15.99", user_id: "2")
Space.create(name: "Dog Kennel", description: "We can provide a dog to live with you", price: "74.99", user_id: "3")
Availability.create(date: "19/08/2019", space_id: "1")
Availability.create(date: "19/08/2019", space_id: "2")
Availability.create(date: "19/08/2019", space_id: "3")
Availability.create(date: "21/02/2019", space_id: "1")
Availability.create(date: "22/02/2019", space_id: "1")
Availability.create(date: "23/02/2019", space_id: "1")
Availability.create(date: "23/02/2019", space_id: "2")
Availability.create(date: "23/02/2019", space_id: "3")
Availability.create(date: "25/08/2019", space_id: "3")
Availability.create(date: "26/08/2019", space_id: "3")
Availability.create(date: "27/08/2019", space_id: "3")
