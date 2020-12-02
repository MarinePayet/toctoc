class Inbox < ApplicationRecord
  has_many :messages
  has_many :participants
  attr_accessor :message
end
