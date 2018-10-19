class Category < ApplicationRecord
  validates :name, presence: true

  has_many :questions, -> { order(created_at: :desc) }, dependent: :destroy

  scope :by_name, -> { order("name") }
end
