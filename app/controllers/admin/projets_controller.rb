class Admin::ProjetsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_if_admin

    def index
      @projets = Projet.where(bailleur_id: current_user.id)
    end

    def new
      @project = Projet.new 
    end
    def create
              @project = Projet.create!(nom_du_projet: params[:nom_du_projet],
                ptf_id: params[:ptf_id],
                appui_id: params[:appui_id],
                objectif_generale_du_projet: params[:objectif_generale_du_projet],
                aspsp: params[:aspsp],
                partenaire_d_implementaton: params[:partenaire_d_implementaton],
                montant: params[:montant],
                forme_d_appui: params[:forme_d_appui],
                debut_du_projet: params[:debut_du_projet],
                fin: params[:fin],
                apdem: params[:apdem], bailleur_id: current_user.id)
                     
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
            @project.files.attach(params[:files])
            @project.picture.attach(params[:picture])
            redirect_to admin_projets_path
          else
            render :new

          end           
     end

  def show
    @projet = Projet.find(params[:id])
  end

  def edit
    @projet = Projet.find(params[:id])
    @secteurprojets = Secteurprojet.where(projet_id: @projet.id)
    @sects = []
    @secteurprojets.each do |sp|
      @sects << sp.secteur
    end
  end

  def update
  	@project = Projet.find(params[:id])
         
         if @project.update(nom_du_projet: params[:nom_du_projet],
              ptf_id: params[:ptf_id],
              forme_d_appui: params[:forme_d_appui],
              objectif_generale_du_projet: params[:objectif_generale_du_projet],
              aspsp: params[:aspsp],
              partenaire_d_implementaton: params[:partenaire_d_implementaton],
              beneficiaires: params[:Beneficiaires],montant: params[:montant],
              nature_de_l_appui: params[:nature_de_l_appui],
              debut_du_projet: params[:debut_du_projet],
              fin: params[:fin],
              apdem: params[:apdem], bailleur_id: current_user.id)
              
          puts "*"*100
           puts params[:sects]
            puts "*"*100
              params[:sects].each do |s|

                Secteurprojet.where(secteur_id: s.id, projet_id: @projet.id).destroy_all
              end
              for x in 0..Secteur.all.count-1
                if params[:"secteur_#{x}"]
                    Secteurprojet.create(projet_id: @projet.id, secteur_id: params[:"secteur_#{x}"])
                end
              end
              
              # @filiere_ids = params[:filiere_ids]
              #   @filiere_ids.each do |x|
              #     Filiereprojet.update(projet_id: @project.id , filiere_id: x.to_i)
              #   end
              # @iga_ids = params[:iga_ids]
              #   @iga_ids.each do |i|
              #     Igaprojet.update(projet_id: @project.id , iga_id: i.to_i) 
              #   end
              # @zone_ids = params[:zone_ids]
              #   @zone_ids.each do |z|
              #     Zoneprojet.update(projet_id: @project.id , zone_id: z.to_i)
              #   end
              # @beneficiaire_ids = params[:beneficiaire_ids]
              #   @beneficiaire_ids.each do |b|
              #     Benefprojet.update(projet_id: @project.id , beneficiaire_id: b.to_i)
              #   end

                redirect_to  admin_projet_path
             else
                render :edit     
            end
  end

  def destroy
  	@projet = Projet.find(params[:id])
  	@projet.destroy
  	redirect_to admin_projets_path
  end

  private
  def check_if_admin
    if current_user.is_admin == nil || current_user.is_admin == false

      flash[:danger] = "Vous n'êtes pas bailleur"
      redirect_to root_path
    
    end
  end
end