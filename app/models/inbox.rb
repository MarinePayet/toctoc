class Inbox < ApplicationRecord
  has_many :messages
  has_many :participants
end
