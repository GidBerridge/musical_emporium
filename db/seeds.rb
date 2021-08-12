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
    instrument_name: "Acoustic",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

file = URI.open('https://images.pexels.com/photos/3714523/pexels-photo-3714523.jpeg?cs=srgb&dl=pexels-kelvin-fran%C3%A7a-3714523.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Martin",
    instrument_name: "Acoustic",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

file = URI.open('https://images.pexels.com/photos/2105038/pexels-photo-2105038.jpeg?cs=srgb&dl=pexels-efrayn-efra%C3%ADn-almario-bl%C3%A1nquez-2105038.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Gibson",
    instrument_name: "Les Paul 1971",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

  file = URI.open('https://images.pexels.com/photos/3428498/pexels-photo-3428498.jpeg?cs=srgb&dl=pexels-philip-boakye-3428498.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Fender",
    instrument_name: "Acoustic 6 string",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

  file = URI.open('https://images.pexels.com/photos/3977174/pexels-photo-3977174.jpeg?cs=srgb&dl=pexels-viktor-mogilat-3977174.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Ibanez",
    instrument_name: "Acoustic",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

    file = URI.open('https://images.pexels.com/photos/1656415/pexels-photo-1656415.jpeg?cs=srgb&dl=pexels-lovely-ram-1656415.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Washburn",
    instrument_name: "Country",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

      file = URI.open('https://images.pexels.com/photos/92069/pexels-photo-92069.jpeg?cs=srgb&dl=pexels-markus-spiske-92069.jpg&fm=jpg')
  instrument = Instrument.create!(
    instrument_type: "Guitar",
    make: "Gibson",
    instrument_name: "Electric",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

  file = URI.open('https://www.pexels.com/photo/built-structure-250695/')
  instrument = Instrument.create!(
    instrument_type: "piano",
    make: "Yamaha",
    instrument_name: "Baby piano",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

  file = URI.open('https://www.pexels.com/photo/black-grand-piano-on-white-and-gray-floor-tiles-5070057/')
  instrument = Instrument.create!(
    instrument_type: "piano",
    make: "Kurzweil",
    instrument_name: "Cup 2",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')

  file = URI.open('https://www.pexels.com/photo/wood-art-music-musician-5678612/')
  instrument = Instrument.create!(
    instrument_type: "Trombone",
    make: "Yamaha",
    instrument_name: "466",
    delivery_option: "Collect",
    daily_rate: 100.00,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    category: "String",
    user_id: User.all.sample.id
    )
  instrument.photo.attach(io: file, filename: 'A name', content_type: 'image/png')


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
