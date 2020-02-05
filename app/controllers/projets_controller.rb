class ProjetsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create]

  def index
     @project = Projet.all	
    
  end
  def show
    @project = Projet.find(params[:id])
  end
   
  def new
    @project= Projet.new
  end
  def create
      @project = Projet.create!(nom_du_projet: params[:nom_du_projet],ptf: params[:ptf],secteur: params[:secteur],forme_d_appui: params[:forme_d_appui],
      Filière_associees: params[:Filière_associees],institions_gouvernementales_associees: params[:institions_gouvernementales_associees],
      Objectif_generale_du_projet: params[:Objectif_generale_du_projet],Appui_specifique_au_secteur_prive: params[:Appui_specifique_au_secteur_prive],
      Zone_d_intervention: params[:Zone_d_intervention],Partenaire_d_implementaton: params[:Partenaire_d_implementaton],Beneficiaires: params[:Beneficiaires],Montant: params[:Montant],
      Nature_de_l_appui: params[:Nature_de_l_appui],Debut_du_projet: params[:Debut_du_projet], Fin_du_projet: params[:Fin_du_projet],
      Alignement_aux_priorites_du_plan_emergeance_Madagascar: params[:Alignement_aux_priorites_du_plan_emergeance_Madagascar])
       if @project.save
          flash[:success] = "project created!"
          redirect_to projects_path(@project.id)
        else
           render 'new'
      end
    end 
    def edit
        @project = Projet.find(params[:id])
    end 
    def update
       @project = Projet.find(params[:id])
       
       if @project.update(nom_du_projet: params[:nom_du_projet],ptf: params[:ptf],secteur: params[:secteur],forme_d_appui: params[:forme_d_appui],
        Filière_associees: params[:Filière_associees],institions_gouvernementales_associees: params[:institions_gouvernementales_associees],
        Objectif_generale_du_projet: params[:Objectif_generale_du_projet],Appui_specifique_au_secteur_prive: params[:Appui_specifique_au_secteur_prive],
        Zone_d_intervention: params[:Zone_d_intervention],Partenaire_d_implementaton: params[:Partenaire_d_implementaton],Beneficiaires: params[:Beneficiaires],Montant: params[:Montant],
        Nature_de_l_appui: params[:Nature_de_l_appui],Debut_du_projet: params[:Debut_du_projet], Fin_du_projet: params[:Fin_du_projet],
        Alignement_aux_priorites_du_plan_emergeance_Madagascar: params[:Alignement_aux_priorites_du_plan_emergeance_Madagascar])
          flash[:seccess] = "project update"
          redirect_to  projects_path
       else
          render :edit
 
       end
     end
end
