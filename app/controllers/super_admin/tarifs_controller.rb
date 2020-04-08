class SuperAdmin::TarifsController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def edit
  end

  def update
  end

  def new
  	@tarif = Tarif.new
  end

  def create

	  	@user = User.where(is_super_admin: true)
	  	@tarif = Tarif.create!(reference: params[:reference], valeur: params[:valeur], unite_id: params[:unite])

		   if @tarif.save
		    redirect_to super_admin_tarifs_path, success: "Tarif créé!!"
		  else
		    render :new

		  end  
  end

end
