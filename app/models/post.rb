class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable

  CATEGORIES = ["SOS", "Tips", "FYI","Lost & Founds","Issues"]
end
