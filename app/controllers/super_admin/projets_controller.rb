class SuperAdmin::ProjetsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_if_super_admin

  def index
  	@projets = Projet.where(validation: false).order(:id).page(params[:page]).per(9)
  end

  def show
    @projet = Projet.find(params[:id])
  end

  def update
  	@projet = Projet.find(params[:id])
   	@projet.update(validation: true)
   	redirect_to super_admin_projets_path
  end

  def destroy
  	@projet = Projet.find(params[:id])
  	@projet.destroy
  	redirect_to super_admin_projets_path
  end

  def check_if_super_admin
      if current_user.is_super_admin == false
        redirect_to root_path
      end
  end
end
