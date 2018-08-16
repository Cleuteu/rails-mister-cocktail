class Dose < ApplicationRecord


  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }

  belongs_to :ingredient
  belongs_to :cocktail
end
