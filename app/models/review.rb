class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, { :in => 0..5 }

  belongs_to :restaurant
end
