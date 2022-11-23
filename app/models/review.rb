class Review < ApplicationRecord
  belongs_to :restaurant
  CATEGORY = [0, 1, 2, 3, 4, 5].freeze

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: CATEGORY }
  validates :rating, numericality: { only_integer: true }
end
