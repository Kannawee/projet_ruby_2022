class IngredientController < ApplicationController

    def index
        @ingredient = Ingredient.all
    end
    def destroy
        @ingredient.destroy
    end
    def new
        @ingredient.new
    end


end