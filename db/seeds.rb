# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Sound.destroy_all

15.times do
  User.create(
    first_name: Faker::Friends.character, last_name: Faker::Friends.character, email: Faker::Internet.email, password: '123'
  )
end

User.create(first_name: 'Kristina', last_name: 'Tong', email: 'kt@aol.com', password: '123')
