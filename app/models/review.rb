class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
  validates :content, length: { minimum: 1 }
end
