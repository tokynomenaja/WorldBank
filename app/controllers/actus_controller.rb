class ActusController < ApplicationController

  def index
  	@actu = Actu.all	
  end

  def new
  end

  def show
    @actu = Actu.find(params[:id])
  end
  
  def update
  end
end
