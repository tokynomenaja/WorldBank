class Admin::UsersController < ApplicationController

	def index
		@users = User.where(is_admin: true)

	end

	def check_if_admin
	    if current_user.is_admin == false
	      flash[:error] = "Vous n'êtes pas super admin !"
	      redirect_to projet_path
	    end
 	end

 	def update
 		@users = User.find(params[:id])
 		@users.update(is_admin: true)
 		redirect_to admin_users_path
 	end

 	def destroy
 		@users = User.find(params[:id])
 		@users.destroy
 		redirect_to admin_users_path
 	end

end