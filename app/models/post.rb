class Post < ApplicationRecord
  belongs_to :user

  CATEGORIES = ["SOS", "Tips", "FYI","Lost & Founds","Issues"]
end
