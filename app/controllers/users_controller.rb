class UsersController < ApplicationController

	 before_action :authenticate_user!, only: [:show]
  
  def show
    @user = User.find(params[:id])
    @user = current_user
  end

  def edit
       @user = current_user
  end

  def update
  	 @user = current_user

  	 is_admin = params[:is_admin]
  	if is_admin.to_i == 1
    	@user.update(is_admin: nil)
    else
     	@user.update(is_admin: false)
    end
    if @user.update(email: params[:email])
    	redirect_to user_path(@user.id), success: "Mise à jour avec succès"
    else
    	render 'edit'
    end
  end
  def index
    @projets = Project.all
    @users = User.all
  end
end
