class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  acts_as_votable

  CATEGORIES = ["SOS", "Tips", "FYI","Lost & Founds","Issues"]
end
