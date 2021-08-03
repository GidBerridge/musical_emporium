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

20.times do
  # instrument_type =
  Instrument.create!(
    instrument_type: ['guitar', 'piano', 'cello', 'violin', 'trombone', 'saxophone', 'flute', 'harp', 'drums'].sample,
    delivery_option: ['courier', 'collection'].sample,
    daily_rate: [85.00, 100.00, 50.00, 150.00, 200.00].sample,
    user_id: User.all.sample.id
    )
end

puts "done"
