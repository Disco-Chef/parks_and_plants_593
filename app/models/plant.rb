class Plant < ApplicationRecord
  belongs_to :garden                   # @plant.garden
  has_many :plant_tags                 # @plant.plant_tags
  has_many :tags, through: :plant_tags # @plant.tags

  validates :name, :image_url, presence: true
end
