class ProjetsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create]

  def index
     @project = Projet.order(:id).page(params[:page]).per(8)
     #  = Project.where(validation: true)	
    
  end
  def show
    @project = Projet.find(params[:id])
  end
   
  def new
    @project = Projet.new 
  end
  def create
      @project = Projet.create!(nom_du_projet: params[:nom_du_projet],
                                ptf: params[:ptf],
                                secteur_id: (params[:secteur_id]),
                                forme_d_appui: params[:forme_d_appui],
                                filière_associees: params[:Filière_associees],
                                iga: params[:iga],
                                objectif_generale_du_projet: params[:objectif_generale_du_projet],
                                aspsp: params[:aspsp],
                                zone: params[:zone],
                                partenaire_d_implementaton: params[:partenaire_d_implementaton],
                                beneficiaires: params[:Beneficiaires],montant: params[:montant],
                                nature_de_l_appui: params[:nature_de_l_appui],
                                debut_du_projet: params[:debut_du_projet],
                                fin: params[:fin],
                                apdem: params[:apdem])
                                                             
                                @secteur_ids = params[:secteur_ids]
                                @secteur_ids.each do |x|
                                Secteurprojet.create(projet_id: @project.id , secteur_id: x.to_i)
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
       
       if @project.update(nom_du_projet: params[:nom_du_projet],ptf: params[:ptf],secteur: params[:secteur],forme_d_appui: params[:forme_d_appui],
        filière_associees: params[:filière_associees],iga: params[:iga],
        objectif_generale_du_projet: params[:Objectif_generale_du_projet],aspsp: params[:aspsp],
        zone: params[:zone],partenaire_d_implementaton: params[:partenaire_d_implementaton],beneficiaires: params[:beneficiaires],montant: params[:montant],
        nature_de_l_appui: params[:nature_de_l_appui],debut_du_projet: params[:debut_du_projet],fin: params[:fin],
        apdem: params[:apdem])
          flash[:seccess] = "project update"
          redirect_to  projects_path
       else
          render :edit
 
       end
     end
end
