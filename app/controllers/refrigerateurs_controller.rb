class RefrigerateursController < ApplicationController

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

    def add_ingredient
        @refrigerateur_ingredient = Refrigerateuringredients.find_or_create_by(
                            refrigerateur_id: params[:id], 
                            ingredient_id: params[:ingredient_id]
                             )
        respond_to do |format|
           if @refrigerateur_ingredient.save
             format.html { redirect_to '/', notice: 'Ingredient a bien été ajouté au frigo' }
             format.json { render :show, status: :created, location: @refrigerateur }
            end
        end
    end
end