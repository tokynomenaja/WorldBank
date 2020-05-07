class SuperAdmin::UpdateProjetsController < ApplicationController
    before_action :authenticate_user!

    def index
      @projets = UpdateProjet.all.order(id: :desc).page(params[:page]).per(9)
    end

  def show
    @projet = UpdateProjet.find(params[:id])
  end

def destroy
  @projet = Projet.find(params[:id])
  @projet.destroy
  redirect_to admin_projets_path, success: "suppression terminée"
end


end
