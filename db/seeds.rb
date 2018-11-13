# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Sound.destroy_all
Sprite.destroy_all

sprites = [
  {id:1, name: 'guitar', url: 'https://image.flaticon.com/icons/png/128/26/26843.png', sprite_type: 'guitar'},
  {id:2, name: 'drums', url: 'https://image.flaticon.com/icons/svg/27/27328.svg', sprite_type: 'drums'},
  {id:3, name: 'piano', url: 'https://image.flaticon.com/icons/svg/27/27066.svg', sprite_type: 'instrument'},
  {id:4, name: 'drums2', url: 'https://image.flaticon.com/icons/svg/26/26995.svg', sprite_type: 'instrument'},
  {id:5, name: 'headphones', url: 'https://image.flaticon.com/icons/svg/26/26834.svg', sprite_type: 'instrument'}
]

15.times do
  User.create(
    first_name: Faker::Friends.character, last_name: Faker::Friends.character, email: Faker::Internet.email, password: '123'
  )
end

User.create(first_name: 'Kristina', last_name: 'Tong', email: 'kt@aol.com', password: '123')

sprites.map do |sprite|
  Sprite.create(name: sprite[:name], url: sprite[:url], sprite_type: sprite[:sprite_type])
end
