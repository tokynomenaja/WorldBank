class SuperAdmin::ActusController < ApplicationController
  before_action :authenticate_user!

  def create
      @actu = Actu.create!(title: params[:title], date_publication: params[:date_publication], user_id: current_user.id)

      if @actu.save
       @actu.files.attach(params[:files])
       redirect_to new_super_admin_actu_path, success: "Actualité créée avec succès"
     else
       render :new

     end 


  end

  def new

    @actus = Actu.where(user_id: current_user.id).order(date_publication: :desc).page(params[:page]).per(9)
    @actu = Actu.new
  end

  def index
    @actus = Actu.where(user_id: current_user.id).order(date_publication: :desc).page(params[:page]).per(9)
  end

  def show
    @actu = Actu.find(params[:id])
  end

  def edit
    @actu = Actu.find(params[:id])
    @actus = Actu.where(user_id: current_user.id).order(date_publication: :desc).page(params[:page]).per(9)
  end

  def update
      @actu = Actu.find(params[:id])
      if @actu.update(title: params[:title],files: params[:files], user_id: current_user.id)
       redirect_to super_admin_actu_path, succès: "Modification terminée"
     end
  end

  def destroy
    @actu = Actu.find(params[:id])
    @actu.destroy
    redirect_to super_admin_actus_path
  end

end
