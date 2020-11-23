class Inbox < ApplicationRecord
  belongs_to :messages
  belongs_to :participants
end
