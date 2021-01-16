class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  belongs_to :cocktail
  has_many :doses
end
