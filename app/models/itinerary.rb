class Itinerary < ApplicationRecord
  has_many :category_itineraries
  has_many :categories, through: :category_itineraries
  has_many :images
  has_many :wishlist_itineraries

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: { in: 10..600 }

  # def images
  #   Image.where(itinerary_id: id)
  # end
end