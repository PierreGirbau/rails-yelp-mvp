# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:                'La Tour de Chine',
    category:            'chinese',
    address:             '7 rue du Temple, Paris',
    phone_number:        'O1 46 78 92 63'
  },
  {
    name:                'Au vieux chaudron',
    category:            'french',
    address:             '17 avenue Foch, Paris',
    phone_number:        'O1 48 98 76 63'
  },
  {
    name:                'Giuseppe Di Roma',
    category:            'italian',
    address:             '34 rue Oberkampf, Paris',
    phone_number:        'O1 87 98 09 78'
  },
  {
    name:                'Osaka',
    category:            'japanese',
    address:             '7 place Churchill, Paris',
    phone_number:        'O1 65 76 45 34'
  },
  {
    name:                'La Frite Belge',
    category:            'belgian',
    address:             '65 rue Grenelle, Paris',
    phone_number:        'O1 09 78 65 76'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
