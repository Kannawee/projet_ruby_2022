class RefrigerateursController < ApplicationController

    def index
        @refrigerateurs = Refrigerateur.all
    end

end