class Admin::ProjetsController < ApplicationController
    before_action :authenticate_user!
    # before_action :check_if_admin

    def index
      # if current_user.organisme
      #   if current_user.organisme.ptf != nil
      #     if current_user.organisme.ptf.title == "WBG"
      #       @projets = Projet.where(bailleur_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
      #     else
      #       @projets = Projet.where(bailleur_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
      #     end
      #   elsif current_user.organisme.nom != nil
      #       @projets = Projet.where(bailleur_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
      #   elsif current_user.organisme.iga != nil
      #       @projets = Projet.where(bailleur_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
      #   end
      # else
      #     @projets = Projet.where(bailleur_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
      # end
      organisme = Organisme.where(user_id: current_user.id)[0]
      if organisme.ptf_id != nil
        @projet = Projet.where(ptf_id: organisme.ptf_id)
      elsif organisme.iga_id != nil
        @projet = Projet.joins(:igaprojets).where(igaprojets: { iga_id: organisme.iga_id })
      else
        @projet = []
      end

    end

    def new
      @project = Projet.new 
    end
    def create
              @project = Projet.create!(nom_du_projet: params[:nom_du_projet],
                ptf_id: params[:ptf],
                appui_id: params[:appui],
                objectif_generale_du_projet: params[:objectif_generale_du_projet],
                aspsp: params[:aspsp],comment: params[:comment],
                debut_du_projet: params[:debut_du_projet].to_date,
                fin: params[:fin].to_date, siteweb: params[:site],
                bailleur_id: current_user.id)

                if params[:creer] == 'Sauvegarder'
                    @project.update(validation: nil)
                    redirect_to admin_projets_path, success: "Votre fiche projet est sauvegardée. Vous pourrez reprendre votre travail ultérieurement et publier votre fiche lorsqu’elle sera complète"
                else
                    UserMailer.create_project_email(@project).deliver_now
                    redirect_to admin_projets_path, success: " Demande de création de fiche projet envoyée avec succès. Vous serez averti par email lorsqu'elle aura été validée et publiée par l'administrateur. Veuillez vérifier votre boîte « indésirables » ou « spam », le mail pourrait s’y trouver. "

                end

                for x in 1..Secteur.all.count
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
                  if params[:"montant#{x}"].to_i > 0
                    Montant.create(price: @convert_usd.to_i,secteur_id: x, projet_id: @project.id, unite_id: 1)
                  end
                end
                  

                if params[:secteur_ids]   
                    @secteur_ids = params[:secteur_ids]
                  @secteur_ids.each do |x|
                    Secteurprojet.create(projet_id: @project.id , secteur_id: x.to_i)
                  end
                end
                
                  10.times do |x|
                  if params[:"checkfili#{x}"] && params[:newfili] != ""
                    @fili = Filiere.create(title: params[:"valfili#{x}"])
                      # SecteurFiliere.create(secteur_id: params[:secteur].to_i, filiere_id: @fili.id)
                      if params[:sectfil_ids]
                       @sectfil_ids = params[:sectfil_ids]
                        @sectfil_ids.each do |y|
                          SecteurFiliere.create(filiere_id: @fili.id , secteur_id: y.to_i)
                        end
                      end
                      Filiereprojet.create(projet_id: @project.id , filiere_id: @fili.id)
                  end
                end
                if params[:filiere_ids]
                  @filiere_ids = params[:filiere_ids]
                @filiere_ids.each do |x|
                  Filiereprojet.create(projet_id: @project.id , filiere_id: x.to_i)
                end
                end

                10.times do |x|
                  if params[:"checkform#{x}"] && params[:newform] != ""
                    @form = Forme.create(title: params[:"valform#{x}"])
                      if params[:sectform_ids]
                       @sectform_ids = params[:sectform_ids]
                          @sectform_ids.each do |y|
                            Formesecteur.create(forme_id: @form.id , secteur_id: y.to_i)
                          end
                      end
                      Formeprojet.create(projet_id: @project.id , forme_id: @form.id)
                  end
                end
                if params[:forme_ids]
                  @forme_ids = params[:forme_ids]
                @forme_ids.each do |x|
                  Formeprojet.create(projet_id: @project.id , forme_id: x.to_i)
                end
                end

                for x in 1..2
                  if params[:"partONG#{x}"]
                    @partenaire = Partenaire.create(plateforme: "ONG", description: params[:"desc_partONG#{x}"])
                    Partenaireprojet.create(projet_id: @project.id , partenaire_id: @partenaire.id)
                  end
                  if params[:"partASS#{x}"]
                    @partenaire = Partenaire.create(plateforme: "Associations", description: params[:"desc_partASS#{x}"])
                    Partenaireprojet.create(projet_id: @project.id , partenaire_id: @partenaire.id)
                  end

                  if params[:"partPRI#{x}"]
                    @partenaire = Partenaire.create(plateforme: "Secteurs Privés", description: params[:"desc_partPRI#{x}"])
                    Partenaireprojet.create(projet_id: @project.id , partenaire_id: @partenaire.id)
                  end

                  if params[:"partCOM#{x}"]
                    @partenaire = Partenaire.create(plateforme: "Chambres de Commerce", description: params[:"desc_partCOM#{x}"])
                    Partenaireprojet.create(projet_id: @project.id , partenaire_id: @partenaire.id)
                  end

                  if params[:"partAUTRE#{x}"]
                    @partenaire = Partenaire.create(plateforme: params[:"plat_partAUTRE#{x}"], description: params[:"desc_partAUTRE#{x}"])
                    Partenaireprojet.create(projet_id: @project.id , partenaire_id: @partenaire.id)
                  end

                end
                 

                10.times do |x|
                  if params[:"checkiga#{x}"] && params[:newiga] != ""
                    @iga = Iga.create(title: params[:"valiga#{x}"])
                    Igaprojet.create(projet_id: @project.id , iga_id: @iga.id)
                  end
                end 
                if params[:iga_ids] 
                  @iga_ids = params[:iga_ids]
                @iga_ids.each do |i|
                  Igaprojet.create(projet_id: @project.id , iga_id: i.to_i) 
                end
                end


                if params[:zone_ids]
                  @zone_ids = params[:zone_ids]
                @zone_ids.each do |z|
                  Zoneprojet.create(projet_id: @project.id , zone_id: z.to_i)
                end
                end

                10.times do |x|
                  if params[:"checkben#{x}"] && params[:newben] != ""
                    @ben = Beneficiaire.create(title: params[:"valben#{x}"])
                    Benefprojet.create(projet_id: @project.id , beneficiaire_id: @ben.id)
                  end
                end
                if params[:beneficiaire_ids]
                  @beneficiaire_ids = params[:beneficiaire_ids]
                @beneficiaire_ids.each do |b|
                  Benefprojet.create(projet_id: @project.id , beneficiaire_id: b.to_i)
                end
                end

                if params[:pem_ids]
                @pem_ids = params[:pem_ids]
                @pem_ids.each do |p|
                  Pemprojet.create(projet_id: @project.id , pem_id: p.to_i)
                end
                end

          if @project.save
            @project.files.attach(params[:files])
          else
            render :new

          end           
     end

  def show
    @projet = Projet.find(params[:id])
    @montant_total = 0
    if params[:creer] == 'Publier'
      @projet.update(validation: false)

    end
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
      @zones << zp.zone.id
    end

    @pemprojets = Pemprojet.where(projet_id: @projet.id)
    @pems = []
    @pemprojets.each do |ppro|
      @pems << ppro.pem
    end
  end

  def update
    @projet = Projet.find(params[:id])
    if @projet.update(nom_du_projet: params[:nom_du_projet], 
     debut_du_projet: params[:debut_du_projet].to_date,
      objectif_generale_du_projet: params[:objectif_generale_du_projet],
     aspsp: params[:aspsp],fin: params[:fin].to_date, 
     appui_id: params[:appui], ptf_id: params[:ptf])


    if params[:modifier] == 'Publier' 
      @projet.update(validation: false, rejet: nil, revalid: false)
    elsif params[:modifier] == 'Re-publier'
      @projet.update(validation: false, revalid: true, rejet: nil)
    end

    @projet.secteurprojets.destroy_all
    @projet.montants.destroy_all

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
        Secteurprojet.create(projet_id: @projet.id, secteur_id: params[:"secteur_#{x}"])
        # Montant.create(price: params[:"montant#{params[:"secteur_#{x}"]}"],secteur_id: params[:"secteur_#{x}"], projet_id: @projet.id, unite_id: params[:"unite_id#{params[:"secteur_#{x}"]}"])
        Montant.create(price: @convert_usd.to_i,secteur_id: params[:"secteur_#{x}"], projet_id: @projet.id, unite_id: 1)
      end
    end


    @projet.filiereprojets.destroy_all
    10.times do |x|
      if params[:"checkfili#{x}"] && params[:newfili] != ""
        @fili = Filiere.create(title: params[:"valfili#{x}"])
          if params[:sectfil_ids]
           @sectfil_ids = params[:sectfil_ids]
              @sectfil_ids.each do |y|
                SecteurFiliere.create(filiere_id: @fili.id , secteur_id: y.to_i)
              end
          end
          Filiereprojet.create(projet_id: @projet.id , filiere_id: @fili.id)
      end
    end
    if params[:filiere_ids]
      @filiere_ids = params[:filiere_ids]
      @filiere_ids.each do |x|
        Filiereprojet.create(projet_id: @projet.id , filiere_id: x.to_i)
      end
    end


    @projet.formeprojets.destroy_all
    10.times do |x|
      if params[:"checkform#{x}"] && params[:newform] != ""
        @form = Forme.create(title: params[:"valform#{x}"])
        if params[:sectform_ids]
         @sectform_ids = params[:sectform_ids]
          @sectform_ids.each do |y|
            Formesecteur.create(forme_id: @form.id , secteur_id: y.to_i)
          end
        end
          Formeprojet.create(projet_id: @projet.id , forme_id: @form.id)
      end
    end
    if params[:forme_ids]
      params[:forme_ids].each do |forme_id|
        Formeprojet.create(projet_id: @projet.id, forme_id: forme_id.to_i)
      end
    end

    @projet.benefprojets.destroy_all
   10.times do |x|
      if params[:"checkben#{x}"] && params[:newben] != ""
        @ben = Beneficiaire.create(title: params[:"valben#{x}"])
        Benefprojet.create(projet_id: @projet.id , beneficiaire_id: @ben.id)
      end
    end
    for x in 0..Beneficiaire.all.count-1
      if params[:"beneficiaire_#{x}"]
        Benefprojet.create(projet_id: @projet.id, beneficiaire_id: params[:"beneficiaire_#{x}"])
      end
    end

    @projet.igaprojets.destroy_all
    10.times do |x|
      if params[:"checkiga#{x}"] && params[:newiga] != ""
        @iga = Iga.create(title: params[:"valiga#{x}"])
        Igaprojet.create(projet_id: @projet.id , iga_id: @iga.id)
      end
    end 
    for x in 0..Iga.all.count-1
      if params[:"iga_#{x}"]
        Igaprojet.create(projet_id: @projet.id, iga_id: params[:"iga_#{x}"])
      end
    end


    @projet.zoneprojets.destroy_all
    for x in 0..Zone.all.count-1
      if params[:"zone_#{x}"]
        Zoneprojet.create(projet_id: @projet.id, zone_id: params[:"zone_#{x}"])
      end
    end

    @projet.pemprojets.destroy_all
    for x in 0..Pem.all.count-1
      if params[:"pem_#{x}"]
        Pemprojet.create(projet_id: @projet.id, pem_id: params[:"pem_#{x}"])
      end
    end

    redirect_to  admin_projet_path, success: "Modification terminée"
  else
    render :edit     
  end
end

def destroy
  @projet = Projet.find(params[:id])
  @projet.secteurprojets.destroy_all
  @projet.montants.destroy_all
  @projet.filiereprojets.destroy_all
  @projet.formeprojets.destroy_all
  @projet.benefprojets.destroy_all
  @projet.igaprojets.destroy_all
  @projet.pemprojets.destroy_all
  @projet.zoneprojets.destroy_all
  @projet.destroy
  redirect_to admin_projets_path, success: "Suppression terminée"
end

private
def check_if_admin
  if current_user.is_admin == nil || current_user.is_admin == false || current_user.is_super_admin == false

    flash[:danger] = "Vous n'êtes pas bailleur"
    redirect_to root_path
    
  end

end

end