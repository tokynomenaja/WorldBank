class ProjetsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create] 
     def index
      if params[:search]
               if params[:search].blank?  
                redirect_to(root_path, alert: "Empty field!") 
               else  
                @parameter = params[:search].downcase  
                @results = Projet.all.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")  
                 end  
                 end    
    end
    def show
      @project = Projet.find(params[:id])
    end
    def edit
      @project = Projet.find(params[:id])
      
    end
     
    def new
      @project = Projet.new 
    end
    def create
      
        @project = Projet.create!(nom_du_projet: params[:nom_du_projet],
                                  ptf_id: params[:ptf_id],periode_id: params[:periode_id],
                                  forme_d_appui: params[:forme_d_appui],
                                  objectif_generale_du_projet: params[:objectif_generale_du_projet],
                                  aspsp: params[:aspsp],
                                  partenaire_d_implementaton: params[:partenaire_d_implementaton],
                                  beneficiaires: params[:Beneficiaires],montant_id: params[:montant_id],
                                  nature_de_l_appui: params[:nature_de_l_appui],
                                  debut_du_projet: params[:debut_du_projet],
                                  fin: params[:fin],
                                  apdem: params[:apdem])
                                       
                                  @secteur_ids = params[:secteur_ids]
                                  @secteur_ids.each do |x|
                                  Secteurprojet.create(projet_id: @project.id , secteur_id: x.to_i)
                                  end
                                  @filiere_ids = params[:filiere_ids]
                                  @filiere_ids.each do |x|
                                  Filiereprojet.create(projet_id: @project.id , filiere_id: x.to_i)
                                  end
                                  @iga_ids = params[:iga_ids]
                                  @iga_ids.each do |i|
                                  Igaprojet.create(projet_id: @project.id , iga_id: i.to_i)
                                    
                                  end
                                  @zone_ids = params[:zone_ids]
                                  @zone_ids.each do |z|
                                    Zoneprojet.create(projet_id: @project.id , zone_id: z.to_i)
                                  end

                                   if @project.save
                                      flash[:success] = "project created!"
                                      redirect_to projets_path
                                    else
                                       render 'new'
        end
      end 
     
      def update
         @project = Projet.find(params[:id])
         
         if @project.update(nom_du_projet: params[:nom_du_projet],
                                  ptf_id: params[:ptf_id],periode_id: params[:periode_id],
                                  forme_d_appui: params[:forme_d_appui],
                                  objectif_generale_du_projet: params[:objectif_generale_du_projet],
                                  aspsp: params[:aspsp],
                                  partenaire_d_implementaton: params[:partenaire_d_implementaton],
                                  beneficiaires: params[:Beneficiaires],montant_id: params[:montant_id],
                                  nature_de_l_appui: params[:nature_de_l_appui],
                                  debut_du_projet: params[:debut_du_projet],
                                  fin: params[:fin],
                                  apdem: params[:apdem])
                            

                                  @secteur_ids = params[:secteur_ids]
                                  @secteur_ids.each do |x|
                                  Secteurprojet.create(projet_id: @project.id , secteur_id: x.to_i)
                                  end
                                  @filiere_ids = params[:filiere_ids]
                                  @filiere_ids.each do |x|
                                  Filiereprojet.create(projet_id: @project.id , filiere_id: x.to_i)
                                  end
                                  @iga_ids = params[:iga_ids]
                                  @iga_ids.each do |i|
                                    Igaprojet.create(projet_id: @project.id , iga_id: i.to_i)
                                    
                                  end
                                  @zone_ids = params[:zone_ids]
                                  @zone_ids.each do |z|
                                    Zoneprojet.create(projet_id: @project.id , zone_id: z.to_i)
                                  end

                                    flash[:seccess] = "project update"
                                    redirect_to  projects_path
                                 else
                                    render :edit
                           
         end
    end
  end