class Category < ApplicationRecord
  validates :name, presence: true

  has_many :questions

  scope :by_name, -> { order("name") }
end
