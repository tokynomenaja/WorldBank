class Admin::PublicationsController < ApplicationController
	before_action :authenticate_user!
	def index
		@pubs = Publication.where(user_id: current_user.id)
	end
	def create
			@pub = Publication.create!(title: params[:title], description: params[:description], user_id: current_user.id)

	    	if @pub.save
	    		@pub.files.attach(params[:files])
	            redirect_to publications_path
	        else
	            render :new

	        end  

	end
	def edit
		@pub = Publication.find(params[:id])
	end
	def update
    @pub = Actu.find(params[:id])

    if @pub.update(title: params[:title], description: params[:description],user_id: current_user.id)
       redirect_to admin_publications_path
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