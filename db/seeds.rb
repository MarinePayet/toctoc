require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying comments"
Comment.destroy_all
# puts "destroying event"
# Event.destroy_all
puts "destroying messages"
Message.destroy_all
puts "destroying participants"
Participant.destroy_all
puts "destroying inbox"
Inbox.destroy_all
# puts "destroying services"
# Service.destroy_all
# puts "destroying posts"
# Post.destroy_all
# puts "destroying user"
# User.destroy_all



# puts "start user"

# users = []

# 10.times do
#   user_new = User.create!(
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
#   start_date = DateTime.parse(Faker::Time.backward(days: 30, format: :short))
#   @event_new = Event.create!(
#     starting_at: start_date,
#     ending_at: start_date + rand(0..5).hours + rand(0..59).minutes,
#     location: Event::LOCATIONS.sample,
#     title: "Garage Sale",
#     description: "Big cleanout of my appt, selling many things",
#     user: users.sample,
#     )
#     file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Yard_Sale_Northern_CA_2005.JPG/800px-Yard_Sale_Northern_CA_2005.JPG")
#     @event_new.photo.attach(io: file, filename: "garage-.jpg", content_type: 'image/jpg')
#     @event_new.save

  # 1.times do
  # start_date = DateTime.parse(Faker::Time.backward(days: 30, format: :short))
  # @event_new = Event.create!(
  #   starting_at: start_date,
  #   ending_at: start_date + rand(0..5).hours + rand(0..59).minutes,
  #   location: Event::LOCATIONS.sample,
  #   title: Event::TITLES.sample,
  #   description: Faker::Movie.quote,
  #   user: users.sample,
  #   )

puts "end events"

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

puts "start services "

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

chiara = User.find(285)
 Service.create!(
  available: false,
  name: "Ladder",
  description: "I have a ladder that I can lend",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Loan"
  )
 Service.create!(
  available: true,
  name: "Ladder",
  description: "I can lend my ladder",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Loan"
  )
 Service.create!(
  available: false,
  name: "Ladder",
  description: "Use my ladder whenever you want",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Loan"
  )
  Service.create!(
  available: true,
  name: "Ladder",
  description: "One of my many tools",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Loan"
  )
  Service.create!(
  available: true,
  name: "Ladder",
  description: "You can rent my super ladder",
  price: 10,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
 Service.create!(
  available: false,
  name: "Plant care",
  description: "I can take care of plants",
  price: 13,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "Plant care",
  description: "I can water plant during your vacations",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "Plant care",
  description: "I can take care of your plants",
  price: 15,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "Plant care",
  description: "I am plant magician",
  price: 25,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "Package reception",
  description: "I work at home so don't hesitate if you need me to get your package",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "Package reception",
  description: "I can receive your packages since I am at home all week ",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: false,
  name: "Package reception",
  description: "I never leave my appartment ",
  price: 10,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: true,
  name: "House cleaning",
  description: "I am a good cleaner and I need money ",
  price: 20,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )
  Service.create!(
  available: false,
  name: "Piano lessons",
  description: "I am a passionate musician and I give lessons ",
  price: 40,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )

  Service.create!(
  available: true,
  name: "Math lessons",
  description: "I am a math prodigy and I give lessons to your kids ",
  price: 40,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )

  Service.create!(
  available: true,
  name: "Cat feeding",
  description: "I love cats if you need someone to feed and cuddle them",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )

  Service.create!(
  available: true,
  name: "Grocery Shopping",
  description: "I can help you carry your groceries",
  price: 0,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )

  Service.create!(
  available: true,
  name: "Grocery Shopping",
  description: "I can go to the supermarket and do your grocery shopping",
  price: 10,
  user: User.where.not(id: chiara.id).all.sample,
  typology: "Service"
  )

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


Post.create!(
  title: " Find keys in the lobby ",
  content: " I found red keys with a NYC keyring in the lobby. Dm me ! ",
  category: "Lost & Founds",
  user_id: 136
)

Post.create!(
  title: " Restaurant Opening the January 20th",
  content: " You should try the futur restaurant of my best friend, just around the corner ! ",
  category: " Tips ",
  user_id: 138
)

Post.create!(
  title: " Front door broken ! ",
  content: " Be carefull the front door is broken. Somebody will come to fix it next week. ",
  category: " Issues ",
  user_id: 129
)

Post.create!(
  title: "Let's thank them !",
  content: " Meeting at 8 p.m. to applaud the hospital staff",
  category: "SOS",
  user_id: 123
)
