class HomeController < ApplicationController
      
def index
       @project = Projet.order(:id).page(params[:page]).per(3)
       @forme_1 = ""
       @ptf_1 = ""
       @montant_1 = ""
       @appui_1 = ""
       @zone_1 = ""
       @ben_1 = ""
       @iga_1 = ""
       @secteur_1 = ""
       @filiere_1 = ""
       @fin_1 = ""

  #recherche controller globale(titre du projet)

      if params[:search]
        if params[:search] == 1
            redirect_to(root_path)
        else  
          @parameter = params[:search].downcase  
          @req = Projet.where(validation: true)
          @results = @req.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%")  
        end  
    end 
  #recherhe controller ptf

      if params[:ptf_id]
        if params[:ptf_id] && params[:ptf_id] != "" 
          if params[:ptf_id] == 1
                redirect_to(root_path)
            else  
             @params_ptf = params[:ptf_id]
               @params_ptf.each do |p|
             @ptf = Projet.all.where(ptf_id: params[:ptf_id], validation: true)
          @ptf_1 = Ptf.all.find(p.to_i).title 
        end 
      end 
    end
  end
  
  #recherche controller Montant

      if params[:montant]
         if params[:montant] && params[:montant] != ""
          if params[:montant] == 1
            redirect_to(root_path)
    
        else  
         @params_montant = params[:montant] 
                @pro = Projet.all.where(validation: true)
                @m1 = params[:montant][0].to_i
                @m2 = params[:montant][1].to_i
                @r = []
                @pro.each do |pro|
                  pro.montants.each do |m|
                  if m.price >= @m1 && m.price <= @m2
                    @r << pro
                  end
                end
              end
     
    end 
  end
end
  #recherche controller  appui

      if params[:appui_id]  
        if params[:appui_id] && params[:appui_id] != ""  
          if params[:appui_id]== 1 
            redirect_to(root_path)  
          else  
            @params_appui = params[:appui_id] 
            @params_appui.each do |a|
            @appui = Projet.all.where(appui_id: params[:appui_id], validation: true)  
            @appui_1 = Appui.all.find(a.to_i).title
       end 
      end
    end 
  end

  #recherche controller  appui

  if params[:fin]
    puts params[:fin]
     if params[:fin] && params[:fin] != ""
      if params[:fin][0]== "2008" && params[:fin][1] == "2030"
        
      else
        if params[:fin]== 1
      redirect_to(root_path)
    
         else  
         @parameter = params[:fin]
         @fin = Projet.all.where(validation: true) 
         @d1 =  params[:fin][0].to_i
         @d2 =  params[:fin][1].to_i
         @d =[]
         @fin.each do |f|
          if f.fin.year >= @d1 && f.fin.year <= @d2
            @d << f
            
          end
         end
       end
      end 
    end 
  end

  #recherche controller filiere

    if params[:search_filiere]
      if params[:search_filiere] && params[:search_filiere] != ""
        if params[:search_filiere]== 1
          redirect_to(root_path)
        
          else
           @params_filiere = params[:search_filiere]
           @params_filiere.each do |f|
           @filiere = Filiereprojet.all.where(filiere_id: params[:search_filiere])
           @filiere_1 = Filiere.all.find(f.to_i).title
       end
      end
    end  
  end

    if params[:search_forme]
      if params[:search_forme] && params[:search_forme] != ""
        if params[:search_forme]== 1
          redirect_to(root_path)
        
          else
           @params_forme = params[:search_forme]
           @params_forme.each do |fo|
           @forme = Formeprojet.all.where(forme_id: params[:search_forme])
           @forme_1 = Forme.all.find(fo.to_i).title
          

       end
      end
    end  
  end

  #recherche controller zone

        if params[:search_zone]
            if params[:search_zone] && params[:search_zone] != ""
              if params[:search_zone]== 1
                redirect_to(root_path)
                
              else
                @params_zone = params[:search_zone]
                @params_zone.each do |z|
                @zone = Zoneprojet.all.where(zone_id: params[:search_zone]) 
                @zone_1 = Zone.all.find(z.to_i).title             
          end
        end  
      end
    end
  #recherche controller beneficiaire

        if params[:search_ben]
          if params[:search_ben] && params[:search_ben] != ""
            if params[:search_ben]== 1
               redirect_to(root_path)
              
              else
                @params_ben = params[:search_ben]
                @params_ben.each do |b|
                @ben = Benefprojet.all.where(beneficiaire_id: params[:search_ben])   
                @ben_1 = Beneficiaire.all.find(b.to_i).title           
          end
        end  
      end
    end

  #recherche controller IGA

      if params[:search_iga]
        if params[:search_iga] && params[:search_iga] != ""
          if params[:search_iga]== 1
              redirect_to(root_path)
              
            else
            @params_iga = params[:search_iga]
            @params_iga.each do |g|
            @iga = Igaprojet.all.where(iga_id: g.to_i)
            @iga_1 = Iga.all.find(g.to_i).title

        end
      end
    end
  end
  #recherche controller secteur

      if params[:search_secteur]
        if params[:search_secteur] && params[:search_secteur] != ""
          if params[:search_secteur]== 1
              redirect_to(root_path)
              else
              @params_secteur = params[:search_secteur]
              @params_secteur.each do |i|
              @secteur = Secteurprojet.all.where(secteur_id: i.to_i)
              @secteur_1 = Secteur.all.find(i.to_i).title
              end
          end
      end
    end

    @montant_total = 0
    Projet.all.where(validation: true).each do |p|
      p.montants.each do |m|
        @montant_total += m.price.to_i
      end

    end
  end
end