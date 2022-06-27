class Ingredient < ApplicationRecord
    has_many :refrigerateur_ingredients
    
    has_many :refrigerateurs, :through => :refrigerateur_ingredients
  end