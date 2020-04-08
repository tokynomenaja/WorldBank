class ActusController < ApplicationController
   before_action :authenticate_user!

  def index
  	@actu = Actu.order(:id).page(params[:page]).per(9)
  end

  def new
  end

  def show
    @actu = Actu.find(params[:id])
  end
  
  def update
  end
end
