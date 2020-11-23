class Message < ApplicationRecord
  belongs_to :inbox
  belongs_to :user
  has_many :participants
end
