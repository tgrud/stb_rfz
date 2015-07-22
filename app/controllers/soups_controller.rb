class SoupsController < ApplicationController
    def index
        @soup = Soup.all
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end
    
    def show
        @soup = Soup.find(params[:id])
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end
end
