class Event < ApplicationRecord
  belongs_to :user

LOCATIONS = [ "My appartment", "In the lobby", "Bar downstairs 'Le bar des amis'", "On the rooftop", "In the courtyard"]
TITLES = ["Meet up", "Flea Market", "Drink", "Tea time", "Give away", "Appartment sale ", 'Party', "co-ownership meeting" ]

end
