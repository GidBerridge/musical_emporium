# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

puts "creating users"
puts "cleaning up"
Review.destroy_all
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

User.create!(
  name: 'Test Person',
  location: 'London')

User.create(
  name: 'Rest Person',
  location: 'Edinburgh'
  )

puts "adding instruments"

# 20.times do
#   # instrument_type =
#   Instrument.create!(
#     instrument_type: ['guitar', 'piano', 'cello', 'violin', 'trombone', 'saxophone', 'flute', 'harp', 'drums'].sample,
#     delivery_option: ['courier', 'collection'].sample,
#     daily_rate: [85.00, 100.00, 50.00, 150.00, 200.00].sample,
#     user_id: User.all.sample.id
#     )
# end

# Instrument.create!(
#   instrument_type: "Guitar",
#   make: "Fender",
#   model_name: "Stratocaster",
#   image_url: "../assets/images/guitars/guitar_3_fender_stratocaster.jpeg",
#   delivery_option: "Collect",
#   daily_rate: 100.00
#   )

# Instrument.create!(
#   instrument_type: "Guitar",
#   make: "gibson",
#   model_name: "Les Paul",
#   image_url: "../assets/images/guitars/guitar_5_gibson_les_paul.jpeg",
#   delivery_option: "Courier",
#   daily_rate: 110.00
#   )

# Instrument.create!(
#   instrument_type: "Guitar",
#   make: "Fender",
#   model_name: "Telecaster",
#   image_url: "../assets/images/guitars/guitar_4_fender_telecaster.jpeg",
#   delivery_option: "Courier",
#   daily_rate: 85.00
#   )

# Instrument.create!(
#   instrument_type: "Piano",
#   make: "Yamaha",
#   model_name: "Baby piano",
#   image_url: "../assets/images/pianos/piano_1_yamaha_baby_piano.jpeg",
#   delivery_option: "Collect",
#   daily_rate: 240.00
#   )

# Instrument.create!(
#   instrument_type: "Piano",
#   make: "Kurzweil",
#   model_name: "Cup 2",
#   image_url: "../assets/images/pianos/piano_3_kurzweil_cup2.jpeg",
#   delivery_option: "Collect",
#   daily_rate: 210.00
#   )


# puts "done"
