class Activity < ApplicationRecord
  # has_many :category_itineraries
  # has_many :categories, through: :category_itineraries
  has_many :images
  has_many :activity_itineraries

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :description, presence: true
  # validates :description, length: { in: 10..600 }

  # def images
  #   Image.where(activity_id: id)
  # end
end
