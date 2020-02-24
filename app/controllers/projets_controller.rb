class ProjetsController < ApplicationController
  
    def index
  
        if params[:search]
          if params[:search] == nil
              redirect_to(root_path)
          else  
            @parameter = params[:search].downcase  
            @res = Projet.where(validation: true) 
            @results = @res.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")
          end  
      end
   
        
      end
  
    def show
      @project = Projet.find(params[:id])
    end  
  end
