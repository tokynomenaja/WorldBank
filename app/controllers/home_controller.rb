class HomeController < ApplicationController
      
def index

       @project = Projet.order(:id).page(params[:page]).per(3)
       @ptf_1 = ""
       @montant_1 = ""
       @appui_1 = ""
       @zone_1 = ""
       @ben_1 = ""
       @iga_1 = ""
       @secteur_1 = ""
       @appui_1 = ""
       @filiere_1 = ""

       #recherche controller globale(titre du projet)
                      if params[:search]
                        if params[:search] == 1
                            redirect_to(root_path)
                        else  
                          @parameter = params[:search].downcase  
                          @res = Projet.where(validation: true)
                          @results = @res.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")  
                        end  
                    end 
              #recherhe controller ptf

                     if params[:ptf_id]
                        if params[:ptf_id] && params[:ptf_id] != "" 
                        if params[:ptf_id] == 1
                               redirect_to(root_path)
                        else  
                          @parameter = params[:ptf_id].downcase  
                          @ptf = Projet.all.where(ptf_id: params[:ptf_id], validation: true)
                          @ptf_1 = Ptf.find(params[:ptf_id]).title.to_s  
                        end 
                    end 
                  end

              #recherche controller Montant

                       if params[:montant_id]
                         if params[:montant_id] && params[:montant_id] != ""
                        if params[:montant_id] == 1 
                           redirect_to(root_path)
                         
                        else  
                          @parameter = params[:montant_id].downcase  
                          @montant = Projet.all.where(montant_id: params[:montant_id], validation: true) 
                          @montant_1 = Montant.find(params[:montant_id]).price.to_s 
                        end 
                    end 
                  end
              #recherche controller  appui
                         if params[:appui_id]
                         
                       if params[:appui_id] && params[:appui_id] != ""
                          
                        if params[:appui_id]== 1 
                           redirect_to(root_path) 
                         
                        else  
                          @parameter = params[:appui_id].downcase  
                          @appui = Projet.all.where(appui_id: params[:appui_id], validation: true)  
                          @appui_1 = Appui.find(params[:appui_id]).title.to_s
                        end 
                    end 
                  end
               #recherche controller  appui
                        if params[:fin]
                        if params[:fin] == 1
                           redirect_to(root_path)
                         
                        else  
                          @parameter = params[:fin].downcase  
                          @fin = Projet.all.where(fin: params[:fin], validation: true)  
                        end 
                    end 


              #recherche controller filiere

                    if params[:search_filiere]
                         if params[:search_filiere] && params[:search_filiere] != ""
                      if params[:search_filiere]== 1
                         redirect_to(root_path)
                       
                      else
                        @parameter = params[:search_filiere].downcase
                        @filiere = Filiereprojet.all.where(filiere_id: params[:search_filiere])
                        @filiere_1 = Filiere.find(params[:search_filiere]).title.to_s
                      end
                    end  
                  end

              #recherche controller zone

                       if params[:search_zone]
                           if params[:search_zone] && params[:search_zone] != ""
                          if params[:search_zone]== 1
                             redirect_to(root_path)
                             
                           else
                              @parameter = params[:search_zone].downcase
                              @res = Zoneprojet.all.where(zone_id: params[:search_zone]) 
                              @zone_1 = Zone.find(params[:search_zone]).title.to_s              
                        end
                       end  
                     end
               #recherche controller beneficiaire

                       if params[:search_ben]
                           if params[:search_ben] && params[:search_ben] != ""
                          if params[:search_ben]== 1
                             redirect_to(root_path)
                              
                           else
                              @parameter = params[:search_ben].downcase
                              @ben = Benefprojet.all.where(beneficiaire_id: params[:search_ben])   
                              @ben_1 = Beneficiaire.find(params[:search_ben]).title.to_s            
                        end
                       end  
                     end

              #recherche controller IGA

                      if params[:search_iga]
                           if params[:search_id] && params[:search_id] != ""
                          if params[:search_iga]== 1
                             redirect_to(root_path)
                             
                         else
                           @parameter = params[:search_iga]
                           @search = Igaprojet.all.where(iga_id: params[:search_iga])
                           @iga_1 = Iga.find(params[:search_iga]).title.to_s
                         end 
                      end
                    end
              #recherche controller secteur

                      if params[:search_secteur]
                           if params[:search_secteur] && params[:search_secteur] != ""
                          if params[:search_secteur]== 1
                             redirect_to(root_path)
                          else
                             @parameter = params[:search_secteur]
                             @secteur = Secteurprojet.all.where(secteur_id: params[:search_secteur])
                             @secteur_1 = Secteur.find(params[:search_secteur]).title.to_s 
                          end
                      end
                    end
    end
end