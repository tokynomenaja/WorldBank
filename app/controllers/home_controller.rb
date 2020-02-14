class HomeController < ApplicationController
  def index
    @project = Projet.order(:id).page(params[:page]).per(3)
    #recherche controller globale(titre du projet)
      if params[:search]
        if params[:search].blank?  
          redirect_to(root_path, alert: "Empty field!") 
        else  
          @parameter = params[:search].downcase  
          @results = Projet.all.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")  
        end  
    end 
    #recherhe controller ptf
    if params[:ptf_id]
          Ptf.find(params[:ptf_id]).projets
        if params[:ptf_id].blank?  
          redirect_to(root_path, alert: "Empty field!") 
        else  
          @parameter = params[:ptf_id].downcase  
          @ptf = Projet.all.where(ptf_id: params[:ptf_id])  
        end 
    end 

    #recherche controller Montant

      if params[:montant_id]
          puts "*"* 100
          Montant.find(params[:montant_id]).projets
          puts "*"* 100
        if params[:montant_id].blank?  
          redirect_to(root_path, alert: "Empty field!") 
        else  
          @parameter = params[:montant_id].downcase  
          @montant = Projet.all.where(montant_id: params[:montant_id])  
        end 
    end 
    #recherche controller  appui
        if params[:appui_id]
          puts "*"* 100
          Appui.find(params[:appui_id]).projets
          puts "*"* 100
        if params[:appui_id].blank?  
          redirect_to(root_path, alert: "Empty field!") 
        else  
          @parameter = params[:appui_id].downcase  
          @appui = Projet.all.where(appui_id: params[:appui_id])  
        end 
    end 
    #recherche controller  appui
        if params[:fin]
        if params[:fin].blank?  
          redirect_to(root_path, alert: "Empty field!") 
        else  
          @parameter = params[:fin].downcase  
          @fin = Projet.all.where(fin: params[:fin])  
        end 
    end 


    #recherche controller filiere

    if params[:search_filiere]
      if params[:search_filiere].blank?
        redirect_to(root_path, alert: "select")
      else
        @parameter = params[:search_filiere].downcase
        @filiere = Filiereprojet.all.where(filiere_id: params[:search_filiere])
      end
    end  

    #recherche controller zone

      if params[:search_zone]
          if params[:search_zone].blank?
              redirect_to(root_path, alert: "select")
          else
              @parameter = params[:search_zone].downcase
              @res = Zoneprojet.all.where(zone_id: params[:search_zone])               
        end
      end  
    #recherche controller beneficiaire

      if params[:search_ben]
          if params[:search_ben].blank?
              redirect_to(root_path, alert: "select")
          else
              @parameter = params[:search_ben].downcase
              @ben = Benefprojet.all.where(beneficiaire_id: params[:search_ben])               
        end
      end  

    #recherche controller IGA

      if params[:search_iga]
          if params[:search_iga].blank?
            redirect_to(root_path)
        else
          @parameter = params[:search_iga]
          @search = Igaprojet.all.where(iga_id: params[:search_iga])
        end 
      end
    #recherche controller secteur

      if params[:search_secteur]
          if params[:search_secteur].blank?
            redirect_to(root_path)
            
          else
            @parameter = params[:search_secteur]
            @secteur = Secteurprojet.all.where(secteur_id: params[:search_secteur]) 
          end
      end
  end
end
