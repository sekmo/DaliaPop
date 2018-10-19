class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :answers, -> { order(created_at: :desc) }, dependent: :destroy

  validates :title, presence: true
end
