class Place < ApplicationRecord
  has_many :destinations
  has_many :trips, through: :destinations
  has_one_attached :image
end
