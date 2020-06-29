class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_super_admin
  
  def index
    @users = User.where(is_super_admin: false)
    # @lasts = []
    @res = []
    @date = params[:loggin_date]

   
  end

  def check_if_super_admin
      if current_user.is_super_admin == false
        redirect_to root_path, success: "Vous n'êtes pas administrateur"
      end
  end
end
