class SuperAdmin::UsersController < ApplicationController
 	before_action :authenticate_user!
	before_action :check_if_super_admin


	def index
		@users = User.where(is_admin: true).or(User.where(is_consultant: true))
		@users_en_attente = User.where(is_consultant: false,is_super_admin: false,is_admin: nil)
		
		@users.each do |u|
			@u = u
			u.messages.each do |m|
				@message_id = m.id
			end
		end	
	end

	def show
		@user = User.find(params[:id])
	end

	def check_if_super_admin
	    if current_user.is_super_admin == false
	      redirect_to root_path
	    end
 	end

 	

 	def update
 		@user = User.find(params[:id])
 		if buttonparams == 'Consultant'
 			@user.update(is_consultant: true)
 		else
 			@user.update(is_admin: true)
 		end

 		# if @user.is_consultant == false
 		# 	@user.update(is_consultant: true)
 		# if @user.is_admin == false
 		# 	@user.update(is_admin: true)
 		# end
 		redirect_to super_admin_users_path
 	end

 	def destroy
 		@user = User.find(params[:id])
 		@user.destroy
 		redirect_to super_admin_users_path
 	end

 	private 

 	def buttonparams
 		params[:valider]
 	end
end
