class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services
  has_many :events
  has_many :posts
  has_many :messages

  has_many :inboxes
  has_one_attached :photo

  include PgSearch::Model

  HOBBIES = [ "Working out", "Museums", "Reading", "Shopping", "Gardening", "Adding Wikipedia content", "Programming", "Drinking with friends"]

  pg_search_scope :search_by_names_job_and_hobbies,
    against: [ :first_name, :last_name, :job, :hobbies ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
