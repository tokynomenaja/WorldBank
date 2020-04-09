class SuperAdmin::TarifsController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def edit
    @tarif = Tarif.find(params[:id])
  end

  def update
      @tarif = Tarif.find(params[:id])
      if @tarif.update(reference: params[:reference], valeur: params[:valeur], unite_id: params[:unite])

        if params[:cree] == 'À utiliser'
          @tarif.update(utilise: true)

        end
        redirect_to edit_super_admin_tarif_path(@tarif.id), success: "Taux de change modifié!!"
      else
        render :new

      end  
  end

  def new
  	@tarif = Tarif.new
  end

  def create
	  	@tarif = Tarif.create!(reference: params[:reference], valeur: params[:valeur], unite_id: params[:unite])
        if params[:cree] == 'A utiliser'
          @tarif.update(utilise: true)

        end
		  if @tarif.save
		    redirect_to new_super_admin_tarif_path, success: "Taux de change créé!!"
		  else
		    render :new

		  end  
  end

  def destroy
    @tarif = Tarif.find(params[:id])
      @tarif.destroy
    redirect_to super_admin_tarifs_path, danger:"Taux supprimé"
  end

end
