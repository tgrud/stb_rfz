class SoupsController < ApplicationController
    def index
    
    end
    
    def show
        @soup = Soup.find(params[:id])
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end
end
