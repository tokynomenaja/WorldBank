class HomeController < ApplicationController
  def index
    @project = Projet.order(:id).page(params[:page]).per(8)
    if params[:search]
      if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") 
      else  
        @parameter = params[:search].downcase  
        @results = Projet.all.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")  
      end  
    end
  end
end
