class Trip < ApplicationRecord
  has_many :destinations
  has_many :places, through: :destinations

  has_rich_text :purpose
end
