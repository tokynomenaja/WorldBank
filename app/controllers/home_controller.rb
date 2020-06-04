class HomeController < ApplicationController
   before_action :notifAdmin   
def index
       @project = Projet.order(id: :desc).page(params[:page]).per(9)
       @forme_1 = ""
       @ptf_1 = ""
       @montant_11 = ""
       @appui_1 = ""
       @zone_1 = ""
       @ben_1 = ""
       @iga_1 = ""
       @secteur_1 = ""
       @filiere_1 = ""
       @fin_1 = ""
       @results = ""



  #recherche controller globale(titre du projet)

      if params[:search]
        if params[:search] == 1
            redirect_to(root_path)
        else 
          @parameter = params[:search].downcase  
          @req = Projet.where(validation: true)

          @results = @req.where("lower(nom_du_projet) LIKE :search", search: "%#{@parameter}%").order(id: :desc).page(params[:page]).per(9)
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


    #recherche multiple secteur et ptf
    if params[:search_secteur] && params[:ptf_id] 
    if params[:search_secteur] != "" && params[:ptf_id] != ""
    
     @psect = params[:search_secteur]
     @ptfid = params[:ptf_id]
     @ptf_pro = []
        @psect.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if p.secteurs.ids.include? s.to_i
            @ptf_pro << p
        end
      end
      end

    end
    end
    end
 #recherche multiple iga et ptf
    if params[:search_iga] && params[:ptf_id]
    if params[:search_iga] != "" && params[:ptf_id] != ""
    
     @piga = params[:search_iga]
     @ptfid = params[:ptf_id]
     @ptf_iga = []
        @piga.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if p.igas.ids.include? s.to_i
            @ptf_iga << p
        end
      end
      end

    end
    end
    end
 
     #recherche region et IGA 

 
     #recherche multiple zone et ptf
    if params[:search_zone] && params[:ptf_id]
    if params[:search_zone] != "" && params[:ptf_id] != ""
    
     @pzone = params[:search_zone]
     @ptfid = params[:ptf_id]
     @ptf_zone = []
        @pzone.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if p.zones.ids.include? s.to_i
            @ptf_zone << p
        end
      end
      end

    end
    end
    end

    #recherche multiple forme et ptf
    if params[:search_forme] && params[:ptf_id]
    if params[:search_forme] != "" && params[:ptf_id] != ""
    
     @pform = params[:search_forme]
     @ptfid = params[:ptf_id]
     @ptf_forme = []
        @pform.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if p.formes.ids.include? s.to_i
            @ptf_forme << p
        end
      end
      end

    end
    end
    end

    #recherche multiple filiere et ptf
    if params[:search_filiere] && params[:ptf_id]
    if params[:search_filiere] != "" && params[:ptf_id] != ""
    
     @pfil = params[:search_filiere]
     @ptfid = params[:ptf_id]
     @ptf_fil = []
        @pfil.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if p.filieres.ids.include? s.to_i
            @ptf_fil << p
        end
      end
      end

    end
    end
    end
   

  
  #recherche controller Montant


     if params[:montant]
       if params[:montant] && params[:montant] != ""
        
        if params[:montant][0]== "" && params[:montant][1] == ""  
        else
          if params[:montant]== 1
          redirect_to(root_path)
          else  
           @params_montant = params[:montant]
          
                  @r = []
                  @pro = Projet.all.where(validation: true)
                  @m1 = params[:montant][0].to_i
                  @m2 = params[:montant][1].to_i
                  @pro.each do |pro|
                   price_total = 0
                  pro.montants.each do |m|
                      price_total += m.price
                  end
                  if price_total >= @m1 && price_total <= @m2
                    @r << pro
                  end
                  end 
                      @montant_11 = @m1
                      @montant_11 = @m2
        
          end 
          if 
            @params_montant = params[:montant]
            @params_secteurs = params[:search_secteur]
            @params_filieres = params[:search_filiere]
            @params_igas = params[:search_iga]
            @params_formes = params[:search_forme]
            @params_ptfs = params[:ptf_id]
            @params_zones = params[:search_zone]
            @params_bens = params[:search_ben]
            @params_appuis = params[:appui_id]
            if @params_montant 
              if @params_secteurs || @params_filieres || @params_igas || @params_formes || @params_ptfs || @params_zones || @params_bens || @params_appuis
                  @r = []
                  @pro = Projet.all.where(validation: true)
                  @m1 = params[:montant][0].to_i
                  @m2 = params[:montant][1].to_i
                  @pro.each do |pro|
                   price_total = 0
                  pro.montants.each do |m|
                      price_total += m.price
                  end
                  if @params_ptfs
                  @params_ptfs.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.ptf_id == s.to_i) 
                      @r << pro
                    end
                  end 
                  end 
                  if @params_appuis
                  @params_appuis.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.appui_id == s.to_i) 
                      @r << pro
                    end
                  end 
                  end 
                  if @params_secteurs
                  @params_secteurs.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.secteurs.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  if @params_filieres
                  @params_filieres.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.filieres.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  if @params_formes
                  @params_formes.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.formes.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  if @params_bens
                  @params_bens.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.beneficiaires.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  if @params_igas
                  @params_igas.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.igas.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  if @params_zones
                  @params_zones.each do |s|
                    if (price_total >= @m1 && price_total <= @m2) && (pro.zones.ids.include?s.to_i) 
                      @r << pro
                    end
                  end 
                  end 

                  end 
                      @montant_11 = @m1
                      @montant_11 = @m2
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

    #recherche controller  appui et zone

      if params[:appui_id] && params[:search_zone]
     if params[:appui_id] != "" && params[:search_zone] != ""
      
      @aappui = params[:appui_id]
      @azone = params[:search_zone]
      @aaa = []
         @aappui.each do |s|
         @azone.each do |f|
         @pro = Projet.all.where(appui_id: f.to_i, validation: true)
         @pro.each do |p|
         if p.zones.ids.include? s.to_i
             @aaa << p
         end
       end
        end

     end
     end
     end

    # recherche multiple fin

  if params[:fin]
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
            @fin_1= @d1
            @fin_1= @d2
         end


         if 
            @parameter= params[:fin]
            @params_secteurs = params[:search_secteur]
            @params_montants = params[:montant]
            @params_filieres = params[:search_filiere]
            @params_igas = params[:search_iga]
            @params_formes = params[:search_forme]
            @params_ptfs = params[:ptf_id]
            @params_zones = params[:search_zone]
            @params_bens = params[:search_ben]
            @params_appuis = params[:appui_id]
            if @parameter
              if  @params_secteurs || @params_filieres || @params_igas || @params_formes || @params_ptfs ||@params_montants || @params_zones || @params_bens || @params_appuis
                  @fin = Projet.all.where(validation: true) 
                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i
                   @d =[]
                  if @params_ptfs
                  @params_ptfs.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.ptf_id == s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 
                  if @params_appuis
                  @params_appuis.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.appui_id == s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_secteurs
                  @params_secteurs.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.secteurs.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_filieres
                  @params_filieres.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.filieres.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_formes
                  @params_formes.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.formes.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_bens
                  @params_bens.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.beneficiaires.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_igas
                  @params_igas.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.igas.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_zones
                  @params_zones.each do |s|
                    @fin.each do |f|
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.zones.ids.include?s.to_i) 
                        @d << f

                      end
                    end
                  end 
                  end 

                  if @params_montants               
                    @fin.each do |f|
                      price_total = 0
                      f.montants.each do |m|
                          price_total += m.price
                      end
                        if (f.fin.year >= @d1 && f.fin.year <= @d2) && (price_total >= @m1 && price_total <= @m2)
                          @d << f
                        
                        end
                    end 
                    end 

                      @fin_1= @d1
                      @fin_1= @d2
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
           @pro_fils = []
           @params_filiere.each do |f|
           @filiere = Filiereprojet.all.where(filiere_id: params[:search_filiere], update_projet: nil)
           @filiere.select(:projet_id).distinct.each do |b|
                if b.projet.validation == true
                  @pro_fils << b.projet

                end
            end
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
           @pro_formes = []
           @params_forme.each do |fo|
           @forme = Formeprojet.all.where(forme_id: params[:search_forme], update_projet: nil)
            @forme.select(:projet_id).distinct.each do |b|
              if b.projet.validation == true
                  @pro_formes << b.projet
                end
            end
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
                @pro_zones = []
                @params_zone.each do |z|
                @zone = Zoneprojet.all.where(zone_id: params[:search_zone], update_projet: nil)
                @zone.select(:projet_id).distinct.each do |b|
                  if b.projet.validation == true
                    @pro_zones << b.projet
                  end
                end 
                @zone_1 = Zone.all.find(z.to_i).title             
          end
        end  
      end
    end
  #recherche controller  zone et filiere

     if params[:search_zone] && params[:search_filiere]
    if params[:search_zone] != "" && params[:search_filiere] != ""
    
    @pro = Projet.all.where( validation: true)
     @zzone = params[:search_zone]
     @zzfi = params[:search_filiere]
     @zfi = []
        @zzone.each do |s|
        @zzfi.each do |f|
        @pro.each do |p|
        if (p.zones.ids.include? s.to_i) && (p.filieres.ids.include? f.to_i)
            @zfi << p
        end
      end
      end

    end
    end
    end

  

  #recherche controller beneficiaire

        if params[:search_ben]
          if params[:search_ben] != "" && params[:search_ben] != ""
            if params[:search_ben]== 1
               redirect_to(root_path)
              
              else
                @params_ben = params[:search_ben]
                @pro_bens = []
                @params_ben.each do |b|

                @ben = Benefprojet.all.where(beneficiaire_id: params[:search_ben], update_projet: nil)  
                @ben.select(:projet_id).each do |b|
                  if b.projet.validation == true
                    @pro_bens << b.projet
                  end
                end

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
            @pro_igas = []
            @params_iga.each do |g|
            @iga = Igaprojet.all.where(iga_id: params[:search_iga],update_projet: nil)
            @iga.select(:projet_id).distinct.each do |b|
              if b.projet.validation == true
                @pro_igas << b.projet
              end
            end
            @iga_1 = Iga.all.find(g.to_i).title

        end
      end
    end
  end

  #recherche IGA et Zone

    if params[:search_iga] && params[:search_zone]
      if params[:search_iga] != "" && params[:search_zone] != ""
     @pro = Projet.all.where(validation: true)
     @priga = params[:search_iga]
     @przone = params[:search_zone]
     @ziga = []
        @priga.each do |s|
        @przone.each do |f|
     @pro.each do |p|
        if (p.zones.ids.include? f.to_i) && (p.igas.ids.include? s.to_i)
            @ziga << p
        end
      end
      end

    end
    end
end

#recherche IGA et filiere

  if params[:search_iga]   && params[:search_filiere] 
      if params[:search_iga] != "" && params[:search_zone] != "" && params[:search_filiere] != ""
     @pro = Projet.all.where(validation: true)
     @priga = params[:search_iga]
     @prfiliere = params[:search_filiere]
     @zigafi = []
        @priga.each do |s|
      
          @prfiliere.each do |fi|
     @pro.each do |p|
        if  (p.igas.ids.include? s.to_i) && (p.filieres.ids.include?fi.to_i)
            @zigafi << p
        end
      end
      end

    end
    end
end
#recherche IGA et forme
  if params[:search_iga]   && params[:search_forme] 
      if params[:search_iga] != ""  && params[:search_forme] != ""
     @pro = Projet.all.where(validation: true)
     @priga = params[:search_iga]
     @prforme = params[:search_forme]
     @igafor = []
        @priga.each do |s|
      
          @prforme.each do |fi|
     @pro.each do |p|
        if  (p.igas.ids.include? s.to_i) && (p.formes.ids.include?fi.to_i)
            @igafor << p
        end
      end
      end

    end
    end
end
  # recherche IGA et Beneficiaire
    if params[:search_iga]   && params[:search_ben] 
      if params[:search_iga] != ""  && params[:search_ben] != ""
     @pro = Projet.all.where(validation: true)
     @priga = params[:search_iga]
     @prben = params[:search_ben]
     @igaben = []
        @priga.each do |s|
      
          @prben.each do |fi|
     @pro.each do |p|
        if  (p.igas.ids.include? s.to_i) && (p.beneficiaires.ids.include?fi.to_i)
            @igaben << p
        end
      end
      end

    end
    end
end

# recherche IGA et secteur
  if params[:search_iga]   && params[:search_secteur] 
      if params[:search_iga] != ""  && params[:search_secteur] != ""
     @pro = Projet.all.where(validation: true)
     @priga = params[:search_iga]
     @prsect = params[:search_secteur]
     @igasect = []
        @priga.each do |s|
      
          @prsect.each do |fi|
     @pro.each do |p|
        if  (p.igas.ids.include? s.to_i) && (p.secteurs.ids.include?fi.to_i)
            @igasect << p
        end
      end
      end

    end
    end
end

     # recherche IGA et nature d'appui
       if params[:search_iga]   && params[:appui_id] 
           if params[:search_iga] != ""  && params[:appui_id] != ""
          @prig = params[:search_iga]
          @pra = params[:appui_id]
          @igaa= []
             @prig.each do |s|
               @pra.each do |fi|
              @pro = Projet.all.where(appui_id: fi.to_i,validation: true)
          @pro.each do |p|
             if  p.igas.ids.include? s.to_i
                 @igaa << p
             end
           end
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
              @pro_sects = []
             
                @params_secteur.each do |i|
                @secteur = Secteurprojet.all.where(secteur_id: params[:search_secteur], update_projet: nil)
                @secteur.select(:projet_id).distinct.each do |b|
                  if b.projet.validation == true
                    @pro_sects << b.projet

                  end
                end
                @secteur_1 = Secteur.all.find(i.to_i).title
                end
           
          end
      end
    end


    #recherche multiple secteur et filière
    if params[:search_secteur] && params[:search_filiere]  && params[:search_forme] == ""
     @pro = Projet.all.where(validation: true)
     @psect = params[:search_secteur]
     @pfil = params[:search_filiere]
     @projets = []
        @psect.each do |s|
        @pfil.each do |f|
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i) && (p.filieres.ids.include?f.to_i)
            @projets << p
        end
      end
      end

    end
    end

    #Recherche multiple secteurs et formes
    if params[:search_secteur] && params[:search_forme]  && params[:search_filiere] == ""
     @pro = Projet.all.where(validation: true)
     @psect = params[:search_secteur]
     @pforme = params[:search_forme]
     @forme_projets = []
        @psect.each do |s|
        @pforme.each do |f|
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i) && (p.formes.ids.include?f.to_i)
            @forme_projets << p
        end
      end
      end
     
     
      end
      end


    #Recherche multiple filières et formes
    if params[:search_filiere] && params[:search_forme] && params[:search_secteur] == ""
     @pro = Projet.all.where(validation: true)
     @pfil = params[:search_filiere]
     @pforme = params[:search_forme]
     @forme_filieres = []
        @pfil.each do |s|
        @pforme.each do |f|
     @pro.each do |p|
        if (p.filieres.ids.include?s.to_i) && (p.formes.ids.include?f.to_i)
            @forme_filieres << p
        end
      end
      end
     
     
      end
      end



    #Recherche multiple secteurs , filieres et formes
    if params[:search_secteur] && params[:search_forme] && params[:search_filiere]
     @pro = Projet.all.where(validation: true)
     @psect = params[:search_secteur]
     @pforme = params[:search_forme]
     @pfils = params[:search_filiere]
     @pro_sectfils = []
        @psect.each do |s|
        @pforme.each do |fo|
        @pfils.each do |f|
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i) && (p.filieres.ids.include?f.to_i) && (p.formes.ids.include?fo.to_i)
            @pro_sectfils << p
        end
      end
      end
      end 
      end
      end
    #recherche multiple secteur, IGA et nature d'appui
    if params[:search_secteur] && params[:search_iga] && params[:appui_id] 
          if params[:search_secteur] && params[:search_iga] && params[:appui_id] != ""
         @pro = Projet.all.where(validation: true)
     @psect = params[:search_secteur]
     @piga = params[:search_iga]
     @pappui = params[:appui_id]
     @sia = []
        @psect.each do |s|
        @pappui.each do |f|
        @piga.each do |fo|
     @pro.each do |p|
        if (p.appui_id == f.to_i) && (p.secteurs.ids.include?s.to_i) && (p.igas.ids.include?fo.to_i) 
            @sia << p
        end
      end
      end
      end 
      end
      end
    end
  #Recherche Secteur et region

 if params[:search_secteur]   && params[:search_zone] == "" 
      if params[:search_secteur] && params[:search_zone] != ""
     @pro = Projet.all.where(validation: true)
     @ssect = params[:search_secteur]
     @szone = params[:search_zone]
     @sszone = []
        @ssect.each do |s|
        @szone.each do |fi|
     @pro.each do |p|
        if  (p.secteurs.ids.include? s.to_i) && (p.zones.ids.include?fi.to_i)
            @sszone << p
        end
      end
      end

    end
    end
end

#recherche multiple filière et beneficiaire
 if params[:search_filiere]   && params[:search_ben]  
      if params[:search_filiere] && params[:search_ben] != ""
     @pro = Projet.all.where(validation: true)
     @filiere = params[:search_filiere]
     @benef = params[:search_ben]
     @fiben = []
        @filiere.each do |s|
        @benef.each do |fi|
     @pro.each do |p|
        if  (p.filieres.ids.include? s.to_i) && (p.beneficiaires.ids.include?fi.to_i)
            @fiben << p
        end
      end
      end

    end
    end
end

# recherche multiple forme et beneficiaire
 if params[:search_forme]   && params[:search_ben]  
      if params[:search_forme] && params[:search_ben] != ""
     @pro = Projet.all.where(validation: true)
     @forme = params[:search_forme]
     @benef = params[:search_ben]
     @foben = []
        @forme.each do |s|
        @benef.each do |fi|
     @pro.each do |p|
        if  (p.formes.ids.include? s.to_i) && (p.beneficiaires.ids.include?fi.to_i)
            @foben << p
        end
      end
      end

    end
    end
end

# recherche multiple toutes le recherche[]

 if params[:ptf_id] && params[:search_secteur] && params[:appui_id] && params[:search_forme] && params[:search_filiere] &&
      params[:search_iga] && params[:search_zone] && params[:search_ben] 
    if params[:ptf_id] && params[:search_secteur] && params[:appui_id] && params[:search_forme] && params[:search_filiere] &&
      params[:search_iga] && params[:search_zone] && params[:search_ben] != ""
        @ptf = params[:ptf_id]
        @secteur = params[:search_secteur]
        @appui  = params[:appui_id]
        @forme  = params[:search_forme]
        @filiere = params[:search_filiere]
        @iga = params[:search_iga]
        @zone = params[:search_zone]
        @ben = params[:search_ben]
        @tout = []

          @secteur.each do |s|
          @forme.each do |f|
          @filiere.each do |fi|
          @iga.each do |ig|
          @zone.each do |z|
          @ben.each do  |ben|
          @ptf.each do |pt|
          @appui.each do |ap|
          @pro = Projet.all.where(ptf_id: pt.to_i, appui_id: ap.to_i, validation: true)
       @pro.each do |p|
          if  (p.secteurs.ids.include? s.to_i) && (p.formes.ids.include?f.to_i) &&
              (p.filieres.ids.include? fi.to_i) && (p.igas.ids.include? ig.to_i) &&
              (p.zones.ids.include? z.to_i) && (p.beneficiaires.ids.include?ben.to_i)
              @tout << p
        end
      end
      end

    end
    end
end
end
end
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




  private
  def notifAdmin
    if current_user
      if current_user.is_super_admin == true
        @projets = Projet.where(validation: false, revalid: false).order(:id).page(params[:page]).per(9)
        @projets_revalid = Projet.where(revalid: true, validation: false).order(:id).page(params[:page]).per(9)
        @projets_valides = Projet.where(validation: true).order(:id).page(params[:page]).per(9)
        flash.now[:success] = "#{@projets.count} projets sont en cours d’attente de validation, #{@projets_revalid.count} projets sont en cours d’attente de revalidation et #{Message.where(read: nil).count} messages ont été reçus"
        flash.delete(:notice)
      elsif current_user.is_admin == nil && current_user.is_consultant == false && current_user.is_super_admin == false
        flash.now[:success] = "Votre compte est en attente de validation"
        flash.delete(:notice)
      end
    end
  end


end




      