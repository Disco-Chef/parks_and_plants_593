class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :tag, uniqueness: { scope: :plant,
    message: "You already taged this plant with that Tag" }
end
