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
  email: 'test@email.com',
  password: 'passone',
  name: 'Test Person',
  location: 'London')

User.create!(
  email: 'rest@email.com',
  password: 'passtwo',
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
#     )end


  file = URI.open('https://images.pexels.com/photos/3428498/pexels-photo-3428498.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Fender",
    instrument_name: "Stratocaster 1996",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )

file = URI.open('https://images.pexels.com/photos/2156327/pexels-photo-2156327.jpeg?cs=srgb&dl=pexels-isaac-weatherly-2156327.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Fender",
    instrument_name: "Stratocaster 1996",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )

Instrument.create!(
  instrument_type: "Guitar",
  make: "Gibson",
  instrument_name: "Les Paul 1971",
  image_url: "/assets/guitars/guitar_5_gibson_les_paul.jpeg",
  delivery_option: "Courier",
  daily_rate: 110.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "String",
  user_id: User.all.sample.id
  )

Instrument.create!(
  instrument_type: "Guitar",
  make: "Fender",
  instrument_name: "Telecaster 1984",
  image_url: "/assets/guitars/guitar_4_fender_telecaster.jpeg",
  delivery_option: "Courier",
  daily_rate: 85.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "String",
  user_id: User.all.sample.id
  )

Instrument.create!(
  instrument_type: "Piano",
  make: "Yamaha",
  instrument_name: "Baby piano",
  image_url: "/assets/pianos/piano_1_yamaha_baby_piano.jpeg",
  delivery_option: "Collect",
  daily_rate: 240.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "Keys",
  user_id: User.all.sample.id
  )

Instrument.create!(
  instrument_type: "Piano",
  make: "Kurzweil",
  instrument_name: "Cup 2",
  image_url: "/assets/pianos/piano_3_kurzweil_cup2.jpeg",
  delivery_option: "Collect",
  daily_rate: 210.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "Keys",
  user_id: User.all.sample.id
  )

Instrument.create!(
  instrument_type: "Trombone",
  make: "Yamaha",
  instrument_name: "466",
  image_url: "/assets/trombones/trombone_3_yamaha_466.jpeg",
  delivery_option: "Collect",
  daily_rate: 210.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "Brass",
  user_id: User.all.sample.id
  )

Instrument.create!(
  instrument_type: "Saxophone",
  make: "Jupiter",
  instrument_name: "Alto",
  image_url: "/assets/sax/sax_3_jupiter_alto.jpeg",
  delivery_option: "Courier",
  daily_rate: 60.00,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  category: "Woodwind",
  user_id: User.all.sample.id
  )

puts "done"
