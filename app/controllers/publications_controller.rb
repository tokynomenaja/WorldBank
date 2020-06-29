class PublicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_account_validate
  def index
  	@pubs = Publication.all.order(id: :desc).page(params[:page]).per(9)
  end

  def new

  end

  
  	
  def show
  	@pub = Publication.find(params[:id])
  end

  def update
  end

  private
  def check_if_account_validate
      if current_user.is_consultant == false && current_user.is_admin == nil && current_user.is_super_admin == false
        redirect_to root_path, success: "Compte en attente de validation, vous ne pouvez pas consulter toutes les publications"
      end
  end

end
