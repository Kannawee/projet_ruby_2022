class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
    end
    def destroy
        @ingredient.destroy
    end
    def new
        @ingredient = Ingredient.new(params.permit(:name))
        respond_to do |format|
            if @ingredient.save
              format.html { redirect_to '/', notice: "L'ingredient a bien été créé" }
              format.json { render :show, status: :created, location: @ingredient }
            end
        end
    end


end