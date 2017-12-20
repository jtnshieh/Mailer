# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Justin = User.create(name: "Justin", email_address:"jtnshieh@gmail.com")
TestEmail = Email.create(subject: "Test", body: "Test Again", user_id: Justin.id)
