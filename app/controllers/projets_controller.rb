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
       @montant_total = 0
      respond_to do |format|
        format.html 
        format.pdf do
          render :pdf => "#{@projet.nom_du_projet}", :layout => '/layouts/pdf.html'
                
       end
      end

        @projet.montants.each do |m|
          @montant_total += m.price.to_i
        end
    end  
  end
