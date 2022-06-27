class RefrigerateursController < ApplicationController

    def index
        @refrigerateurs = Refrigerateur.all
    end
    def destroy
        @refrigerateur.destroy
    end
    def new
        @refrigerateur.new
    end


end