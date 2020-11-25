require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying event"
Event.destroy_all
puts "destroying user"
User.destroy_all
puts "destroying inbox"
Inbox.destroy_all

puts "start user"

users = []

10.times do
  user_new = User.create!(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Code.npi,
    stairs: Faker::Number.between(from: 1, to: 10),
    birthday: Faker::Date.birthday,
    catch_phrase: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    hobbies: [User::HOBBIES.sample],
    job: Faker::Job.title,
    phone_number: Faker::PhoneNumber
    )

  users << user_new
end
puts "user finish"

puts "start events"
10.times do
  @event_new = Event.create!(
    starting_date: Faker::Time.backward(days: 7, format: :short),
    ending_date: Faker::Time.forward(days: 5, format: :short),
    location: [Event::LOCATIONS.sample],
    title: [Event::TITLES.sample],
    description: Faker::Movie.quote,
    user: users.sample
    )
end

puts "end events"

puts "start inboxes"
​10.times do
  @inbox_new = Inbox.create!(
    topic: Faker::ChuckNorris.fact
    )
end
