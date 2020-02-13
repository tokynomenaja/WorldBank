class ProjetsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create] 
    def index
      @project = Projet.order(:id).page(params[:page]).per(8)


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
    def show
      @project = Projet.find(params[:id])
    end  
    def new
      @project = Projet.new 
    end
    def create
              @project = Projet.create!(nom_du_projet: params[:nom_du_projet],
                ptf_id: params[:ptf_id],periode_id: params[:periode_id],
                appui_id: params[:appui_id],
                objectif_generale_du_projet: params[:objectif_generale_du_projet],
                aspsp: params[:aspsp],
                partenaire_d_implementaton: params[:partenaire_d_implementaton],
                montant_id: params[:montant_id],
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

                @beneficiaire_ids = params[:beneficiaire_ids]
                @beneficiaire_ids.each do |b|
                  Benefprojet.create(projet_id: @project.id , beneficiaire_id: b.to_i)
                end
          if @project.save
            flash[:sucess] = "ok"
            redirect_to projets_path
          else
            render :new

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
