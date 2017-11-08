class Review < ApplicationRecord

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false}
  validates_numericality_of :rating, only_integer: true

  belongs_to :restaurant
end
