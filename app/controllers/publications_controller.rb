class PublicationsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@pubs = Publication.all
  end

  def new

  end

  
  	
  def show
  	@pub = Publication.find(params[:id])
  end

  def update
  end
end
