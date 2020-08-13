class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, :ingredient, :description, presence: true, uniqueness: { scope: [:cocktail, :ingredient] }
end
