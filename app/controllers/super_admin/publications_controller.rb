
class SuperAdmin::PublicationsController < ApplicationController
	def create
	  	@pub = Publication.create!(title: params[:title], description: params[:description])

	    	if @pub.save
	    		@pub.files.attach(params[:files])
	            redirect_to publications_path
	        else
	            render :new

	        end  
	end    


	def update
		
	end 
	 
end