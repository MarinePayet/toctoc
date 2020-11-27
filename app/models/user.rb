class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services
  has_many :events
  has_many :posts
  has_many :messages
  has_many :inboxes

  HOBBIES = [ "Working out", "Museums", "Reading", "Shopping", "Gardening", "Adding Wikipedia content", "Programming", "Drinking with friends"]

end
