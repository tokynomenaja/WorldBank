class SuperAdmin::PublicationsController < ApplicationController
	before_action :authenticate_user!

	def create
	  	@pub = Publication.create!(title: params[:title], description: params[:description], user_id: current_user.id)

	    	if @pub.save
	    		@pub.files.attach(params[:files])
	            redirect_to publications_path, success: "Publication créée avec succès"
	        else
	            render :new

	        end  
	end
	def edit
	   @pub = Publication.find(params[:id]) 	
	end    
	def update
		@pub = Publication.find(params[:id])

    	if @pub.update(title: params[:title], description: params[:description],user_id: current_user.id)
       		redirect_to super_admin_publications_path, success: "Modification terminéé"
	   	end
		
	end 
	def destroy
	  @pub = Publication.find(params[:id])
	  @pub.destroy
	  redirect_to super_admin_publications_path
		
	end
	def index
		@pubs = Publication.order(:id).page(params[:page]).per(9)
	end
	def show
		@pub = Publication.find(params[:id])
		
	end
end