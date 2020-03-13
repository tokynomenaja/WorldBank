class Admin::PublicationsController < ApplicationController
	before_action :authenticate_user!
	def index
		@pubs = Publication.where(user_id: current_user.id)
	end
	def create
			@pub = Publication.create!(title: params[:title], user_id: current_user.id)

	    	if @pub.save
	    		@pub.files.attach(params[:files])
	            redirect_to publications_path
	        else
	            render :new

	        end  

	end
end