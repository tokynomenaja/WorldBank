class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_super_admin
  
  def index
    @users = User.all
    # @lasts = []
    @res = []
    @date = params[:loggin_date]

    # @users.each do |u|
    #   if u.last_sign_in_at != nil
    #     @ulast1 = u.last_sign_in_at.to_date
    #     @ulast = @ulast1.to_formatted_s(:db) 
    #   if @ulast == @date
    #     @res << u
    #   end
    #   end
    # end

    @users.each do |u|
      u.visits.each do |v|
        if v.updated_at != nil
          if v.updated_at.to_date.to_formatted_s(:db) == @date
            @res << u
          end
        end
      end

    end
   
  end

  def check_if_super_admin
      if current_user.is_super_admin == false
        redirect_to root_path, success: "Vous n'êtes pas administrateur"
      end
  end
end
