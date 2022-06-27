class Refrigerateur < ApplicationRecord
    has_many :refrigerateur_ingredients
    
    has_many :ingredients, :through => :refrigerateur_ingredients
end