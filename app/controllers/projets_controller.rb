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
      @projet = Projet.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf { 
          render :pdf => "show", :layout => 'pdf.html'
        }
      end
    end  
  end
