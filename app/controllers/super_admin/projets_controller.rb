class SuperAdmin::ProjetsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_if_super_admin
    # before_update :save


  def index
    @projets = Projet.where(validation: false, revalid: false).order(id: :desc).page(params[:page]).per(9)
    @projets_revalid = Projet.where(revalid: true, validation: false).order(id: :desc).page(params[:page]).per(9)
    @projets_valides = Projet.where(validation: true).order(id: :desc).page(params[:page]).per(9)
    @projets_rejets = Projet.where(rejet: true, validation: nil).order(id: :desc).page(params[:page]).per(9)
    @updateProjets = UpdateProjet.all.order(id: :desc).page(params[:page]).per(9)
  end

  def show
    @projet = Projet.find(params[:id])
    @montant_total = 0
      @projet.montants.each do |m|
        @montant_total += m.price.to_i
      end
  end

  def edit
    @projet = Projet.find(params[:id])
    @secteurprojets = Secteurprojet.where(projet_id: @projet.id)
    @sects = []
    @montants = []
    @secteurprojets.each do |sp|
      @sects << sp.secteur
      @sects.each do |s|
        @montants << s.montants
      end
    end
 

    @filiereprojets = Filiereprojet.where(projet_id: @projet.id)
    @fils = []
    @filiereprojets.each do |fp|
      @fils << fp.filiere
    end


    @formprojets = Formeprojet.where(projet_id: @projet.id)
    @forms = []
    @formprojets.each do |fop|
      @forms << fop.forme
    end

    @beneficiaireprojets = Benefprojet.where(projet_id: @projet.id)
    @bens = []
    @beneficiaireprojets.each do |bp|
      @bens << bp.beneficiaire
    end

    @igaprojets = Igaprojet.where(projet_id: @projet.id)
    @igas = []
    @igaprojets.each do |ip|
      @igas << ip.iga
    end

    @zoneprojets = Zoneprojet.where(projet_id: @projet.id)
    @zones = []
    @zoneprojets.each do |zp|
      @zones << zp.zone
    end

    @pemprojets = Pemprojet.where(projet_id: @projet.id)
    @pems = []
    @pemprojets.each do |ppro|
      @pems << ppro.pem
    end

  end

  def update
    @projet = Projet.find(params[:id])
    @admin = User.find(21)

    if rejetparam == 'Valider' || rejetparam == 'Revalider'
      @projet.update(validation: true, rejet: nil, revalid: false)
        UserMailer.email_validation(@projet).deliver_now
        UserMailer.email_validation(@admin).deliver_now
        redirect_to super_admin_projet_path, success: "Projet validé"
    elsif rejetparam == 'Rejeter'
      @projet.update(rejet: true, validation: nil, revalid: false)    
        UserMailer.email_rejet(@projet).deliver_now
        UserMailer.email_rejet(@admin).deliver_now
        redirect_to super_admin_projet_path, success: "Projet rejeté"

    else
     
     if UpdateProjet.find_by(projet_id: @projet.id) == nil
        @projetmodif = UpdateProjet.create!(nom_du_projet: params[:nom_du_projet], 
       debut_du_projet: params[:debut_du_projet].to_date,
        objectif_generale_du_projet: params[:objectif_generale_du_projet],
       aspsp: params[:aspsp],fin: params[:fin].to_date, 
       appui_id: params[:appui], ptf_id: params[:ptf], projet_id: @projet.id)

        @projetmodif.secteurprojets.destroy_all
        @projetmodif.montants.destroy_all
      for x in 0..Secteur.all.count

        case params[:"unite_id#{x}"]
          when "1"
            @montant = params[:"montant#{x}"]
            @convert_usd = @montant
          when "2"
            @montant = params[:"montant#{x}"]
            @uac = Tarif.where(unite_id:  2, reference: "UAC").last.valeur
            @convert_uac = @montant.to_i / @uac
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd
          when "3"
            @montant = params[:"montant#{x}"]
            @convert_uac = @montant.to_i
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd

          when "4"
            @montant = params[:"montant#{x}"]
            @uac = Tarif.where(unite_id:  4, reference: "UAC").last.valeur
            @convert_uac = @montant.to_i / @uac
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd

        end
        if params[:"secteur_#{x}"]
          Secteurprojet.create(update_projet_id: @projetmodif.id, secteur_id: params[:"secteur_#{x}"])
          # Montant.create(price: params[:"montant#{params[:"secteur_#{x}"]}"],secteur_id: params[:"secteur_#{x}"], projet_id: @projet.id, unite_id: params[:"unite_id#{params[:"secteur_#{x}"]}"])
          Montant.create(price: @convert_usd.to_i,secteur_id: params[:"secteur_#{x}"], update_projet_id: @projetmodif.id, unite_id: 1)
        end
      end

      @projetmodif.filiereprojets.destroy_all
      10.times do |x|
        if params[:"checkfili#{x}"] && params[:newfili] != ""
          @fili = Filiere.create(title: params[:"valfili#{x}"])
          if params[:sectfil_ids]
          @sectfil_ids = params[:sectfil_ids]
          @sectfil_ids.each do |y|
            SecteurFiliere.create(filiere_id: @fili.id , secteur_id: y.to_i)
          end
          end
            Filiereprojet.create(update_projet_id: @projetmodif.id , filiere_id: @fili.id)
        end
      end
      if params[:filiere_ids]
        @filiere_ids = params[:filiere_ids]
        @filiere_ids.each do |x|
          Filiereprojet.create(update_projet_id: @projetmodif.id , filiere_id: x.to_i)
        end
      end

      @projetmodif.formeprojets.destroy_all
      10.times do |x|
        if params[:"checkform#{x}"] && params[:newform] != ""
          @form = Forme.create(title: params[:"valform#{x}"])
          if params[:sectform_ids]
           @sectform_ids = params[:sectform_ids]
          @sectform_ids.each do |y|
            Formesecteur.create(forme_id: @form.id , secteur_id: y.to_i)
          end
          end
            Formeprojet.create(update_projet_id: @projetmodif.id , forme_id: @form.id)
        end
      end
      if params[:forme_ids]
        params[:forme_ids].each do |forme_id|
          Formeprojet.create(update_projet_id: @projetmodif.id, forme_id: forme_id.to_i)
        end
      end

      @projetmodif.benefprojets.destroy_all
     10.times do |x|
        if params[:"checkben#{x}"] && params[:newben] != ""
          @ben = Beneficiaire.create(title: params[:"valben#{x}"])
          Benefprojet.create(update_projet_id: @projetmodif.id , beneficiaire_id: @ben.id)
        end
      end
      for x in 0..Beneficiaire.all.count-1
        if params[:"beneficiaire_#{x}"]
          Benefprojet.create(update_projet_id: @projetmodif.id, beneficiaire_id: params[:"beneficiaire_#{x}"])
        end
      end

      @projetmodif.igaprojets.destroy_all
      10.times do |x|
        if params[:"checkiga#{x}"] && params[:newiga] != ""
          @iga = Iga.create(title: params[:"valiga#{x}"])
          Igaprojet.create(update_projet_id: @projetmodif.id , iga_id: @iga.id)
        end
      end 
      for x in 0..Iga.all.count-1
        if params[:"iga_#{x}"]
          Igaprojet.create(update_projet_id: @projetmodif.id, iga_id: params[:"iga_#{x}"])
        end
      end


      @projetmodif.zoneprojets.destroy_all
      for x in 0..Zone.all.count-1
        if params[:"zone_#{x}"]
          Zoneprojet.create(update_projet_id: @projetmodif.id, zone_id: params[:"zone_#{x}"])
        end
      end

      @projetmodif.pemprojets.destroy_all
      for x in 0..Pem.all.count-1
        if params[:"pem_#{x}"]
          Pemprojet.create(update_projet_id: @projetmodif.id, pem_id: params[:"pem_#{x}"])
        end
      end
    

        redirect_to  super_admin_update_projets_path, success: "Modification terminée"

    elsif UpdateProjet.find_by(projet_id: @projet.id) != nil

        @projetmodif = UpdateProjet.where(projet_id: @projet.id)
        @projetmodif.update(nom_du_projet: params[:nom_du_projet], 
       debut_du_projet: params[:debut_du_projet].to_date,
        objectif_generale_du_projet: params[:objectif_generale_du_projet],
       aspsp: params[:aspsp],fin: params[:fin].to_date, 
       appui_id: params[:appui], ptf_id: params[:ptf], projet_id: @projet.id)


        @projetmodif.each do |p|
        p.secteurprojets.destroy_all
        p.montants.destroy_all
      for x in 0..Secteur.all.count

        case params[:"unite_id#{x}"]
          when "1"
            @montant = params[:"montant#{x}"]
            @convert_usd = @montant
          when "2"
            @montant = params[:"montant#{x}"]
            @uac = Tarif.where(unite_id:  2, reference: "UAC").last.valeur
            @convert_uac = @montant.to_i / @uac
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd
          when "3"
            @montant = params[:"montant#{x}"]
            @convert_uac = @montant.to_i
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd

          when "4"
            @montant = params[:"montant#{x}"]
            @uac = Tarif.where(unite_id:  4, reference: "UAC").last.valeur
            @convert_uac = @montant.to_i / @uac
            @usd = Tarif.where(unite_id:  1, reference: "UAC").last.valeur
            @convert_usd = @convert_uac * @usd

        end
        if params[:"secteur_#{x}"]
          Secteurprojet.create(update_projet_id: p.id, secteur_id: params[:"secteur_#{x}"])
          # Montant.create(price: params[:"montant#{params[:"secteur_#{x}"]}"],secteur_id: params[:"secteur_#{x}"], projet_id: @projet.id, unite_id: params[:"unite_id#{params[:"secteur_#{x}"]}"])
          Montant.create(price: @convert_usd.to_i,secteur_id: params[:"secteur_#{x}"], update_projet_id: p.id, unite_id: 1)
        end
      end

      p.filiereprojets.destroy_all
      10.times do |x|
        if params[:"checkfili#{x}"] && params[:newfili] != ""
          @fili = Filiere.create(title: params[:"valfili#{x}"])
          if params[:sectfil_ids]
           @sectfil_ids = params[:sectfil_ids]
          @sectfil_ids.each do |y|
            SecteurFiliere.create(filiere_id: @fili.id , secteur_id: y.to_i)
          end
          end
            Filiereprojet.create(update_projet_id: p.id , filiere_id: @fili.id)
        end
      end
      if params[:filiere_ids]
        @filiere_ids = params[:filiere_ids]
        @filiere_ids.each do |x|
          Filiereprojet.create(update_projet_id: p.id , filiere_id: x.to_i)
        end
      end

      p.formeprojets.destroy_all
      10.times do |x|
        if params[:"checkform#{x}"] && params[:newform] != ""
          @form = Forme.create(title: params[:"valform#{x}"])
          if params[:sectform_ids]
           @sectform_ids = params[:sectform_ids]
          @sectform_ids.each do |y|
            Formesecteur.create(forme_id: @form.id , secteur_id: y.to_i)
          end
          end
            Formeprojet.create(update_projet_id: p.id , forme_id: @form.id)
        end
      end
      if params[:forme_ids]
        params[:forme_ids].each do |forme_id|
          Formeprojet.create(update_projet_id: p.id, forme_id: forme_id.to_i)
        end
      end

      p.benefprojets.destroy_all
     10.times do |x|
        if params[:"checkben#{x}"] && params[:newben] != ""
          @ben = Beneficiaire.create(title: params[:"valben#{x}"])
          Benefprojet.create(update_projet_id: p.id , beneficiaire_id: @ben.id)
        end
      end
      for x in 0..Beneficiaire.all.count-1
        if params[:"beneficiaire_#{x}"]
          Benefprojet.create(update_projet_id: p.id, beneficiaire_id: params[:"beneficiaire_#{x}"])
        end
      end

      p.igaprojets.destroy_all
      10.times do |x|
        if params[:"checkiga#{x}"] && params[:newiga] != ""
          @iga = Iga.create(title: params[:"valiga#{x}"])
          Igaprojet.create(update_projet_id: p.id , iga_id: @iga.id)
        end
      end 
      for x in 0..Iga.all.count-1
        if params[:"iga_#{x}"]
          Igaprojet.create(update_projet_id: p.id, iga_id: params[:"iga_#{x}"])
        end
      end


      p.zoneprojets.destroy_all
      for x in 0..Zone.all.count-1
        if params[:"zone_#{x}"]
          Zoneprojet.create(update_projet_id: p.id, zone_id: params[:"zone_#{x}"])
        end
      end

      p.pemprojets.destroy_all
      for x in 0..Pem.all.count-1
        if params[:"pem_#{x}"]
          Pemprojet.create(update_projet_id: p.id, pem_id: params[:"pem_#{x}"])
        end
      end
      end
        redirect_to  super_admin_update_projets_path, success: "Modification terminée"
  
    end
      
    
  end
  

      
  end


  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy
    redirect_to super_admin_projets_path
  end



  private
  def check_if_super_admin
      if current_user.is_super_admin == false
        redirect_to root_path
      end
  end

  def rejetparam
    params[:rejeter]
  end

  def modifparam
    params[:modifier]
  end

  # def savedata
  #   @projet = Projet.find(params[:id])
  #   @projet.save
  # end

  # def email_validation
  #   if self.validation == true
  #       UserMailer.email_validation(self).deliver_now
  #   end

  # end

  # def email_rejet
  #     if self.rejet == true
  #         UserMailer.email_rejet(self).deliver_now
  #     end
  # end
end
