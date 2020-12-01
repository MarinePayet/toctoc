class Inbox < ApplicationRecord
  has_many :messages
  has_many :participants
  has_one :user
  attr_accessor :message
end
