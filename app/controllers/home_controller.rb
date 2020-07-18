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
       @res = ""



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


  #recherche controller globale(recherche)
  if params[:montant] && params[:fin]
    if params[:montant][0]== "" && params[:montant][1] == "" && params[:fin][0]== "2008" && params[:fin][1] == "2030"
       @res = Projet.where(validation: true).order(id: :desc).page(params[:page]).per(9)
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
              @ptf = Projet.all.where(ptf_id: params[:ptf_id], validation: true).order(id: :desc).page(params[:page]).per(9)
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


    #recherche multiple  ptf , nature et forme

    if params[:ptf_id] && params[:appui_id] && params[:search_forme]
    
     @appui = params[:appui_id]
     @ptfid = params[:ptf_id]
     @pnf = []
        @appui.each do |s|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i,appui_id: s.to_i, validation: true)
        @pro.each do |p|
        if p.formes.ids.include? s.to_i
            @pnf << p
        end
      end
      end

    end
    end
  
  #recherche multiple  ptf , filiere et iga

    if params[:ptf_id] && params[:search_filiere] && params[:search_iga]
    
     @filiere = params[:search_filiere]
     @iga = params[:search_iga]
     @ptfid = params[:ptf_id]
     @pfi = []
        @filiere.each do |s|
        @iga.each do |i|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if (p.filieres.ids.include? s.to_i) && (p.igas.include?i.to_i)
            @pfi << p
        end
      end
      end

    end
    end
  end

    #recherche multiple  ptf , beneficiaire et region

    if params[:ptf_id] && params[:search_ben] && params[:search_zone]
    
     @beneficiaire = params[:search_ben]
     @zone = params[:search_zone]
     @ptfid = params[:ptf_id]
     @pbz = []
        @beneficiaire.each do |s|
        @zone.each do |i|
        @ptfid.each do |f|
        @pro = Projet.all.where(ptf_id: f.to_i, validation: true)
        @pro.each do |p|
        if (p.zones.ids.include? s.to_i) && (p.beneficiaires.include?i.to_i)
            @pbz << p
        end
      end
      end

    end
    end
  end
 
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
            @appui = Projet.all.where(appui_id: params[:appui_id], validation: true).order(id: :desc).page(params[:page]).per(9)
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
         @pro = Projet.all.where(appui_id: s.to_i, validation: true)
         @pro.each do |p|
         if p.zones.ids.include? f.to_i
             @aaa << p
         end
       end
        end

     end
     end
     end




    #recherche controller  appui et secteur

      if params[:appui_id] && params[:search_secteur]
     if params[:appui_id] != "" && params[:search_secteur] != ""
      
      @aappui = params[:appui_id]
      @azone = params[:search_secteur]
      @asect = []
         @aappui.each do |s|
         @azone.each do |f|
         @pro = Projet.all.where(appui_id: s.to_i, validation: true)
         @pro.each do |p|
         if p.secteurs.ids.include? f.to_i
             @asect << p
         end
       end
        end

     end
     end
     end


    #recherche controller  appui et forme

    if params[:appui_id] && params[:search_forme]
     if params[:appui_id] != "" && params[:search_forme] != ""
      
      @aappui = params[:appui_id]
      @appforme = params[:search_forme]
      @appui_formes = []
         @aappui.each do |s|
         @appforme.each do |f|
         @pro = Projet.all.where(appui_id: s.to_i, validation: true)
         @pro.each do |p|
         if p.formes.ids.include? f.to_i
             @appui_formes << p
         end
       end
        end

     end
     end
     end

    
  # recherche par période
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
          if f.fin
          if f.fin.year >= @d1 && f.fin.year <= @d2
            @d << f

          end
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
              if  @params_secteurs || @params_filieres || @params_igas || @params_formes || @params_ptfs || @params_zones || @params_bens || @params_appuis
                  @fin = Projet.all.where(validation: true) 
                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i
                   @d =[]
                  if @params_ptfs
                  @params_ptfs.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.ptf_id == s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 
                  if @params_appuis
                  @params_appuis.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.appui_id == s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_secteurs
                  @params_secteurs.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.secteurs.ids.include?s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_filieres
                  @params_filieres.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.filieres.ids.include?s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_formes
                  @params_formes.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.formes.ids.include?s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_bens
                  @params_bens.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.beneficiaires.ids.include?s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_igas
                  @params_igas.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.igas.ids.include?s.to_i) 
                        @d << f

                      end
                      end
                    end
                  end 
                  end 

                  if @params_zones
                  @params_zones.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.zones.ids.include?s.to_i) 
                        @d << f

                      end
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
                        if f.fin

                        if (f.fin.year >= @d1 && f.fin.year <= @d2) && (price_total >= @m1 && price_total <= @m2)
                          @d << f
                        
                        end
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


  #recherche montant,periode et beneficiaire


         if params[:fin] && params[:montant] && params[:search_ben]
              if  
                  @parameter= params[:fin]
                  @params_montants = params[:montant]
                  @params_bens = params[:search_ben]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                   @benrd =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_bens.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.beneficiaires.ids.include?s.to_i) 
                        @benrd << f
                     

                      end
                      end
                    end
                  end 
                  end 
                  end
                end
            end 
          end 


    #recherche montant,periode, beneficiaire , zone et iga


         if params[:fin] && params[:montant] && params[:search_ben] &&
            params[:search_zone] && params[:search_iga]
              if  
                  @parameter= params[:fin]
                  @params_montants = params[:montant]
                  @params_zone = params[:search_zone]
                  @params_iga = params[:search_iga]
                  @params_bens = params[:search_ben]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                   @rbmpi =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_bens.each do |s|
                  @params_zone.each do |z|
                  @params_iga.each do |i|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && 
                        (f.beneficiaires.ids.include?s.to_i) && (f.zones.ids.include?z.to_i) 
                        @rbmpi << f
                     

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



    #recherche montant,periode et secteur


         if params[:fin] && params[:montant] && params[:search_secteur]
              if  
                  @parameter= params[:fin]
                  @params_montants = params[:montant]
                  @params_secteur = params[:search_secteur]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                 @spm =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_secteur.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.secteurs.ids.include?s.to_i) 
                        @spm << f
                     

                      end
                      end
                    end
                  end 
                  end 
                  end
                end
            end 
          end        





    #recherche montant,periode et zone


         if params[:fin] && params[:montant] && params[:search_zone]
              if  
                  @parameter= params[:fin]
                  @params_montants = params[:montant]
                  @params_zone = params[:search_zone]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                 @zpm =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_zone.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.zones.ids.include?s.to_i) 
                        @zpm << f
                     

                      end
                      end
                    end
                  end 
                  end 
                  end
                end
            end 
          end               
        

    #recherche montant,periode et iga


         if params[:fin] && params[:montant] && params[:search_iga]
              if  
                  @parameter= params[:fin]
                  @params_montants = params[:montant]
                  @params_iga = params[:search_iga]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                 @ipm =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_iga.each do |s|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.beneficiaires.ids.include?s.to_i) 
                        @ipm << f
                     

                      end
                      end
                    end
                  end 
                  end 
                  end
                end
            end 
          end               
        
  #recherche controller periode, montant, region , beneficiaire

         if params[:fin] && params[:montant] && params[:search_ben] && params[:search_zone]
              if  
                  @parameter= params[:fin]
                  @params_zone = params[:search_zone]
                  @params_montants = params[:montant]
                  @params_bens = params[:search_ben]
                  @fin = Projet.all.where(validation: true) 

                  @d1 =  params[:fin][0].to_i
                  @d2 =  params[:fin][1].to_i
                  @m1 = @params_montants[0].to_i
                  @m2 = @params_montants[1].to_i

                   @benrdz =[]

                  @params_montants.each do |m|
                      @fin.each do |p|
                        price_total = 0
                         p.montants.each do |t|
                          price_total += t.price
                  @params_bens.each do |s|
                  @params_zone.each do |z|
                    @fin.each do |f|
                      if f.fin
                      if  (price_total >= @m1 && price_total <= @m2) && (f.fin.year >= @d1 && f.fin.year <= @d2) && (f.beneficiaires.ids.include?s.to_i) && (f.zones.ids.include?z.to_i) 
                        @benrdz << f
                     

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

  #recherche controller forme
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

  if params[:search_iga] && params[:search_filiere] 
      if params[:search_iga] != "" && params[:search_filiere] != ""
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

    if params[:search_iga] && params[:appui_id] 
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

      # recherche IGA, nature d'appui et zone

    if params[:search_iga] && params[:appui_id] && params[:search_zone]
          @iga = params[:search_iga]
          @zone = params[:search_zone]
          @pra = params[:appui_id]
          @nir= []
             @zone.each do |z|
             @iga.each do |s|
               @pra.each do |fi|
              @pro = Projet.all.where(appui_id: fi.to_i,validation: true)
          @pro.each do |p|
             if  (p.igas.ids.include? s.to_i) && (p.zones.ids.include? z.to_i)
                 @nir << p
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
       @projets_fils = []
          @psect.each do |s|
          @pfil.each do |f|
       @pro.each do |p|
          if (p.secteurs.ids.include?s.to_i) && (p.filieres.ids.include?f.to_i)
              @projets_fils << p
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

 #Recherche multiple secteurs , appui , formes et ptf
    if params[:search_secteur] && params[:search_forme] && params[:appui_id] && params[:ptf_id]
     @psect = params[:search_secteur]
     @pforme = params[:search_forme]
     @pappui = params[:appui_id]
     @pptf = params[:ptf_id]

     @pro_sectptf = []

        @psect.each do |s|
        @pforme.each do |fo|
        @pptf.each do |t|
        @pappui.each do |ap|
            @pro = Projet.all.where(appui_id: ap.to_i,ptf_id: t.to_i,validation: true)
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i)  && (p.formes.ids.include?fo.to_i)
            @pro_sectptf << p
        end
      end
      end
      end 
      end
      end
    end
  #Recherche multiple secteurs , appui , formes et filiere
    if params[:search_secteur] && params[:search_forme] && 
       params[:appui_id] && params[:search_filiere] 
       

           @psect = params[:search_secteur]
           @pforme = params[:search_forme]
           @filiere = params[:search_filiere]
           @pptf = params[:appui_id]

           @snff = []

              @psect.each do |s|
              @pforme.each do |fo|
              @filiere.each do |f|
              @pptf.each do |t|
                @pro = Projet.all.where(appui_id: t.to_i,validation: true)
         @pro.each do |p|
            if (p.secteurs.ids.include?s.to_i)  && (p.formes.ids.include?fo.to_i) && (p.filieres.ids.include?f.to_i)
                @snff << p
            end
      end
      end
      end 
      end
      end
    end
 



#Recherche multiple secteurs , appui , formes , ptf,filiere

    if params[:search_secteur] && params[:search_forme] && params[:appui_id] &&
       params[:ptf_id] && params[:search_filiere] 

     @psect = params[:search_secteur]
     @pforme = params[:search_forme]
     @pappui = params[:appui_id]
     @pptf = params[:ptf_id]
     @filiere = params[:search_filiere]

     @pnfsf = []


  
        @filiere.each do |f|
        @psect.each do |s|
        @pforme.each do |fo|
        @pptf.each do |t|
        @pappui.each do |ap|
            @pro = Projet.all.where(appui_id: ap.to_i,ptf_id: t.to_i,validation: true)
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i)  && (p.formes.ids.include?fo.to_i) &&
            (p.filieres.ids.include?f.to_i)
             @pnfsf << p
        end
      end
      end
      end 
      end
      end
    end
  end




    #Recherche multiple secteurs , appui , formes , ptf , iga ,filiere

    if params[:search_secteur] && params[:search_forme] && params[:appui_id] &&
       params[:ptf_id] && params[:search_filiere] && params[:search_iga]

     @psect = params[:search_secteur]
     @pforme = params[:search_forme]
     @pappui = params[:appui_id]
     @pptf = params[:ptf_id]
     @iga = params[:search_iga]
     @filiere = params[:search_filiere]

     @pnifsf = []


        @iga.each do |i|
        @filiere.each do |f|
        @psect.each do |s|
        @pforme.each do |fo|
        @pptf.each do |t|
        @pappui.each do |ap|
            @pro = Projet.all.where(appui_id: ap.to_i,ptf_id: t.to_i,validation: true)
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i)  && (p.formes.ids.include?fo.to_i) && (p.igas.ids.include?i.to_i) &&
            (p.filieres.ids.include?f.to_i)
             @pnifsf << p
        end
      end
      end
      end 
      end
      end
    end
  end
end




    #Recherche multiple secteurs , appui , formes , ptf , iga ,filiere et zone

    if params[:search_secteur] && params[:search_forme] && params[:appui_id] &&
       params[:ptf_id] && params[:search_filiere] && params[:search_iga] && params[:search_zone]

     @psect = params[:search_secteur]
     @zona = params[:search_zone]
     @pforme = params[:search_forme]
     @pappui = params[:appui_id]
     @pptf = params[:ptf_id]
     @iga = params[:search_iga]
     @filiere = params[:search_filiere]

     @pnifsfz = []


        @iga.each do |i|
        @zone.each do |z|
        @filiere.each do |f|
        @psect.each do |s|
        @pforme.each do |fo|
        @pptf.each do |t|
        @pappui.each do |ap|
            @pro = Projet.all.where(appui_id: ap.to_i,ptf_id: t.to_i,validation: true)
     @pro.each do |p|
        if (p.secteurs.ids.include?s.to_i)  && (p.formes.ids.include?fo.to_i) && (p.igas.ids.include?i.to_i) &&
            (p.filieres.ids.include?f.to_i) && (p.zones.ids.include?z.to_i)
             @pnifsfz << p
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


#recherche multiple filiere, IGA , nature d'appui et forme

    if params[:search_filiere] && params[:search_iga] && params[:appui_id] && params[:search_forme]
         @pro = Projet.all.where(validation: true)
     @filiere = params[:search_filiere]
     @piga = params[:search_iga]
     @forme = params[:search_forme]
     @pappui = params[:appui_id]
     @sifp = []
        @filiere.each do |s|
        @pappui.each do|f|
        @forme.each do |fo|
        @piga.each do  |i|
     @pro.each do |p|
        if (p.appui_id == f.to_i) && (p.filieres.ids.include?s.to_i) && (p.igas.ids.include?i.to_i) && (p.formes.ids.include?fo.to_i)

            @sifp << p
        end
      end
      end
      end 
      end
      end
      end
   

  #Recherche multiple iga , filiere , zone et ptf

    if params[:search_iga] && params[:search_filiere] && params[:search_zone] && params[:ptf_id]
     @piga = params[:search_iga]
     @pfiliere = params[:search_filiere]
     @pzone = params[:search_zone]
     @pptf = params[:ptf_id]

     @pro_igfizo = []

        @piga.each do |s|
        @pfiliere.each do |fo|
        @pzone.each do |t|
        @pptf.each do |ap|
            @pro = Projet.all.where(ptf_id: ap.to_i,validation: true)
     @pro.each do |p|
        if (p.igas.ids.include?s.to_i)  && (p.filieres.ids.include?fo.to_i) && (p.zones.include?t.to_i)
            @pro_igfizo << p
        end
      end
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

    #recherche multiple zone, IGA et filiere
    if params[:search_zone] && params[:search_iga] && params[:search_filiere] 
        if params[:search_zone] && params[:search_iga] && params[:search_filiere] != ""
        @pro = Projet.all.where(validation: true)
     @pzone = params[:search_zone]
     @piga = params[:search_iga]
     @pfiliere = params[:search_filiere]
     @zif = []
        @pzone.each do |s|
        @piga.each do  |f|
        @pfiliere.each do |fo|
     @pro.each do |p|
        if (p.zones.ids.include? s.to_i) && (p.igas.ids.include?f.to_i) && (p.filieres.ids.include?fo.to_i) 
            @zif << p
        end
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
        @pappui.each do|f|
        @piga.each do  |fo|
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


#recherche multiple zone et beneficiaire

 if params[:search_zone]   && params[:search_ben]  
      if params[:search_zone] && params[:search_ben] != ""
     @pro = Projet.all.where(validation: true)
     @forme = params[:search_zone]
     @benef = params[:search_ben]
     @zoben = []
        @forme.each do |s|
        @benef.each do |fi|
     @pro.each do |p|
        if  (p.zones.ids.include? s.to_i) && (p.beneficiaires.ids.include?fi.to_i)
            @zoben << p
        end
      end
      end

    end
    end
end

# recherche multiple toutes le recherche[]

 if params[:ptf_id] && params[:search_secteur] && params[:appui_id] && params[:search_forme] && params[:search_filiere] &&
      params[:search_iga] && params[:search_zone] && params[:search_ben] 
        @ptf = params[:ptf_id]
        @secteur = params[:search_secteur]
        @appui  = params[:appui_id]
        @forme  = params[:search_forme]
        @filiere = params[:search_filiere]
        @iga = params[:search_iga]
        @zone = params[:search_zone]
        @ben = params[:search_ben]
        @tout = []
        @m = []
        @m1 = params[:montant][0].to_i
        @m2 = params[:montant][1].to_i
        @d1 = params[:fin][0].to_i
        @d2 = params[:fin][1].to_i

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
          price_total = 0
            p.montants.each do |m|
                price_total += m.price
            end
          if  (p.secteurs.ids.include? s.to_i) && (p.formes.ids.include?f.to_i) &&
              (p.filieres.ids.include? fi.to_i) && (p.igas.ids.include? ig.to_i) &&
              (p.zones.ids.include? z.to_i) && (p.beneficiaires.ids.include?ben.to_i) && (price_total >= @m1 && price_total <= @m2) && (p.fin.year >= @d1 && p.fin.year <= @d2)
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
        @projets = Projet.where(validation: false, revalid: false)
        @projets_revalid = Projet.where(revalid: true, validation: false)
        @projets_valides = Projet.where(validation: true)
        flash.now[:success] = "#{@projets.count} projets sont en cours d’attente de validation, #{@projets_revalid.count} projets sont en cours d’attente de revalidation et #{Message.where(read: nil).count} messages ont été reçus"
        flash.delete(:notice)
      elsif current_user.is_admin == nil && current_user.is_consultant == false && current_user.is_super_admin == false
        flash.now[:success] = "Votre compte est en attente de validation"
        flash.delete(:notice)
      end
    end
  end


end




      