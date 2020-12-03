class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  acts_as_votable

  LOCATIONS = [ "My flat", "In the lobby", "Bar downstairs", "On the rooftop", "In the patio" ]
  TITLES = ["Meet up", "Flea Market", "Drink", "Tea time", "Give away", "Appartment sale ", 'Party', "co-ownership meeting" ]

end
