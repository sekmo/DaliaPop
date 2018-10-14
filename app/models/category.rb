class Category < ApplicationRecord
  validates :name, presence: true

  scope :by_name, -> { order("name") }
end
