class Service < ApplicationRecord
  belongs_to :user

  NAMES = ["House cleaning", "Drill", "Piano lessons", "Plant care", "Cat feeding", "Grocery Shopping", "Receive packages"]
  TYPOLOGIES = ["Loan", "Service"]
end
