class Admin::PublicationsController < ApplicationController
	before_action :authenticate_user!
	def index
		@pubs = Publication.where(user_id: current_user.id).order(id: :desc).page(params[:page]).per(9)
	end
	def create
			@pub = Publication.create!(title: params[:title], description: params[:description], user_id: current_user.id)

	    	if @pub.save
	    		@pub.files.attach(params[:files])
	            redirect_to admin_publications_path, success: "Publication créée"
	        else
	            render :new

	        end  

	end
	def edit
		@pub = Publication.find(params[:id])
	end

	def update
	    @pub = Publication.find(params[:id])

	    if @pub.update(title: params[:title], description: params[:description],files: params[:files], user_id: current_user.id)
	       redirect_to admin_publication_path, success: "Modification terminée"
	   	end
	end
	
	def show
		@pub = Publication.find(params[:id])
	end

	def destroy
	  @pub = Publication.find(params[:id])
	  @pub.destroy
	  redirect_to admin_publications_path
	end
end