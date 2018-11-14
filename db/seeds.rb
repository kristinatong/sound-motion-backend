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

# sprites = [
#   {id:1, name: 'guitar', url: 'https://image.flaticon.com/icons/png/128/26/26843.png', sprite_type: 'string'},
#   {id:2, name: 'drumset', url: 'https://image.flaticon.com/icons/svg/27/27328.svg', sprite_type: 'percussion'},
#   {id:3, name: 'piano', url: 'https://image.flaticon.com/icons/svg/27/27066.svg', sprite_type: 'percussion'},
#   {id:4, name: 'drums2', url: 'https://image.flaticon.com/icons/svg/26/26995.svg', sprite_type: 'percussion'},
#   {id:5, name: 'headphones', url: 'https://image.flaticon.com/icons/svg/26/26834.svg', sprite_type: 'miscellaneous'},
#   {id:6, name: 'electric-guitar', url:'https://image.flaticon.com/icons/svg/27/27205.svg', sprite_type: 'string'}
# ]

sprites = [
  {name:"guitar", url:"https://image.flaticon.com/icons/png/128/26/26843.png", sprite_type: "string"},
{name:"drumset", url:"https://image.flaticon.com/icons/svg/27/27328.svg", sprite_type: "percussion"},
{name:"piano", url:"https://image.flaticon.com/icons/svg/27/27066.svg", sprite_type: "percussion"},
{name:"conga", url:"https://image.flaticon.com/icons/svg/26/26995.svg", sprite_type: "percussion"},
{name:"headphones", url:"https://image.flaticon.com/icons/svg/26/26834.svg", sprite_type: "miscellaneous"},
{name:"electric guitar", url:"https://image.flaticon.com/icons/svg/27/27205.svg", sprite_type: "string"},
{name:"dj", url:"https://image.flaticon.com/icons/svg/27/27011.svg", sprite_type: "dj"},
{name:"music note", url:"https://image.flaticon.com/icons/svg/27/27144.svg", sprite_type: "miscellaneous"},
{name:"piano keys", url:"https://image.flaticon.com/icons/svg/27/27194.svg", sprite_type: "percussion"},
{name:"speakers", url:"https://image.flaticon.com/icons/svg/27/27134.svg", sprite_type: "dj"},
{name:"mp3", url:"https://image.flaticon.com/icons/svg/27/27188.svg", sprite_type: "miscellaneous"},
{name:"record player", url:"https://image.flaticon.com/icons/svg/27/27391.svg", sprite_type: "dj"},
{name:"violin", url:"https://image.flaticon.com/icons/svg/26/26560.svg", sprite_type: "string"},
{name:"trumpet", url:"https://image.flaticon.com/icons/svg/73/73349.svg", sprite_type: "brass"},
{name:"french horn", url:"https://image.flaticon.com/icons/svg/3/3805.svg", sprite_type: "brass"},
{name:"trombone", url:"https://image.flaticon.com/icons/svg/16/16867.svg", sprite_type: "brass"},
{name:"saxophone", url:"https://image.flaticon.com/icons/svg/26/26583.svg", sprite_type: "woodwind"},
{name:"clarinet", url:"https://image.flaticon.com/icons/svg/26/26508.svg", sprite_type: "woodwind"},
{name:"kanye west", url:"https://cdn4.iconfinder.com/data/icons/famous-faces/100/kanye2-512.png", sprite_type: "artist"},
{name:"the beatles", url:"https://i.pinimg.com/originals/a5/45/ef/a545efbf3454dde9cc87a57151d673ce.png", sprite_type: "artist"}
]

# 15.times do
#   User.create(
#     first_name: "Faker::Friends.character", last_name: Faker::Friends.character, email: Faker::Internet.email, password: '123'
#   )
# end

User.create(first_name: 'Kristina', last_name: 'Tong', email: 'k', password: '1')

sprites.map do |sprite|
  Sprite.create(sprite)
end

# 20.times do
#   Sprite.create(name: 'test', url: 'https://image.flaticon.com/icons/png/128/26/26843.png', sprite_type: 'guitar')
# end
