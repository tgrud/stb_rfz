class SoupsController < ApplicationController
    before_action :fetch_soup, only: [:show, :edit, :update, :destroy, :toggle_featured] 
    
    def index
        @soup = Soup.all
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end
    
    def show
        respond_to do |format|
            format.html
            format.json { render json: @soup }
        end
    end
    
    def new
        
    end
    
    def edit
        
    end
    
    def update
    
    end
    
    def destroy
    
    end
    
    def toggle_featured 
        @soup.toggle!(:featured)
        flash[:notice] = "Successfully changed the feature flag"
        redirect_to @soup
    end
    
    private
    
    def fetch_soup
        @soup = Soup.find(params[:id])
    end
    
end
