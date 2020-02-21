class SuperAdmin::UsersController < ApplicationController
 	before_action :authenticate_user!
	before_action :check_if_super_admin


	def index
		@bailleurs = User.where(is_admin: true)
		@bailleurs_en_attente = User.where(is_admin: false)	
	end

	def show
		@bailleur = User.find(params[:id])
	end

	def check_if_super_admin
	    if current_user.is_super_admin == false
	      redirect_to root_path
	    end
 	end

 	def update
 		@bailleur = User.find(params[:id])
 		@bailleur.update(is_admin: true)
 		redirect_to super_admin_users_path
 	end

 	def destroy
 		@user = User.find(params[:id])
 		@user.destroy
 		redirect_to super_admin_users_path
 	end
end
