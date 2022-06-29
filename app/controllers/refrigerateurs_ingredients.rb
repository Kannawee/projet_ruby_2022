class RefrigerateurIngredientsController < ApplicationController

    def index
        @refrigerateurs = Refrigerateur.all
        @ingredients = Ingredient.all
    end

    def destroy
        @refrigerateur.destroy
    end

    def new
        @refrigerateur = Refrigerateur.new(params.permit(:name))
        respond_to do |format|
            if @refrigerateur.save
              format.html { redirect_to '/', notice: "Le refrigerateur a bien été créé" }
              format.json { render :show, status: :created, location: @refrigerateur }
            end
        end
    end

end