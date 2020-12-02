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
puts "destroying messages"
Message.destroy_all
puts "destroying participants"
Participant.destroy_all
puts "destroying inbox"
Inbox.destroy_all
puts "destroying services"
Service.destroy_all
puts "destroying comments"
Comment.destroy_all
puts "destroying posts"
Post.destroy_all
puts "destroying user"
User.destroy_all



# puts "start user"

# users = []

# 10.times do
#   @user_new = User.create!(
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     password: Faker::Code.npi,
#     stairs: Faker::Number.between(from: 1, to: 10),
#     birthday: Faker::Date.birthday,
#     catch_phrase: Faker::TvShows::HowIMetYourMother.catch_phrase,
#     hobbies: User::HOBBIES.sample,
#     job: Faker::Job.title,
#     phone_number: Faker::PhoneNumber
#     )
#   file = URI.open("https://source.unsplash.com/collection/419323/300x300")
#   @user_new.photo.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
#   @user_new.save
#   users << @user_new
# end

# puts "user finish"

# puts "start events"
# 10.times do
#   start_date = DateTime.parse(Faker::Time.backward(days: 7, format: :short))
#   end_date = (start_date + rand(1..5).days).beginning_of_day
#   @event_new = Event.create!(
#     starting_at: start_date,
#     ending_at: end_date + rand(0..23).hours + rand(0..59).minutes,
#     location: Event::LOCATIONS.sample,
#     title: Event::TITLES.sample,
#     description: Faker::Movie.quote,
#     user: users.sample,
#     )
#   # file = URI.open("https://source.unsplash.com/collection/1649209/300x300")
#   # @event_new.photo.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
#   # @event_new.save
# end
# puts "end events"

# puts "start inboxes"

# inboxes = []


# inbox_new = Inbox.create!(
#   topic: Faker::TvShows::Buffy.episode
# )

# inboxes << inbox_new

# puts "end inboxes"

# puts "start participants"

# users.first(5).each do |user|
#   participant_new = Participant.create!(
#   user: user,
#   inbox: inboxes.sample
#   )
# end

# puts "end participants"

# puts "start messages"
# 10.times do
#   message_new = Message.create!(
#   content: Faker::Movies::HarryPotter.quote,
#   user: users.first(5).sample,
#   inbox: inboxes.sample,
#     )
# end

# puts "end messages"

# puts "start services "

# 10.times do
#   service_new = Service.create!(
#   available: [true, false].sample,
#   name: Service::NAMES.sample,
#   description: Faker::TvShows::Friends.quotes,
#   price: rand(0..200),
#   user: users.sample,
#   typology: Service::TYPOLOGIES.sample
#   )
# end

# puts "end services"

# puts "start posts"

# 10.times do
#   post_new = Post.create!(

#   title: Faker::Movie.title,
#   category: Post::CATEGORIES.sample,
#   content: Faker::TvShows::TheFreshPrinceOfBelAir.quote,
#   user: users.sample
#   )
# end

# puts "end posts"


