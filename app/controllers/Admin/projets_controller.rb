class Admin::ProjetsController < ApplicationController
  
  def index
    @projets = Projet.where(validation: false)
  end

  def update
  	@projets = Projet.find(params[:id])
   	@projets.update(validation: true)
   	redirect_to admin_projets_path
  end

  def destroy
  	@projets = Projet.find(params[:id])
  	@projets.destroy
  	redirect_to admin_projets_path
  end

  private
  def check_if_admin
    if current_user.is_admin == false
      flash[:error] = "Vous n'êtes pas un administrateur"
      redirect_to admin_projets_path
    
    end
  end
end