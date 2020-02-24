class SecteurController < ApplicationController
   def index
   	
   end
   def show
   		@secteur = Secteur.find(params[:id])
   end
end
