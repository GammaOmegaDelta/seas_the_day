class Category < ApplicationRecord
  has_many :category_itineraries
  has_many :itineraries, through: :category_itineraries
end
