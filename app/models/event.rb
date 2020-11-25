class Event < ApplicationRecord
  belongs_to :user

  LOCATIONS = [ "My flat", "In the lobby", "Bar downstairs", "On the rooftop", "In the patio" ]
  TITLES = ["Meet up", "Flea Market", "Drink", "Tea time", "Give away", "Appartment sale ", 'Party', "co-ownership meeting" ]

end
