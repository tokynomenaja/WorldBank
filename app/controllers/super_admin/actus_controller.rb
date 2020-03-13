class SuperAdmin::ActusController < ApplicationController
  before_action :authenticate_user!

  def create
      @user = User.where(is_super_admin: true)
  	 	@actu = Actu.create!(title: params[:title], user_id: @user.id)

	    	if @actu.save
	    		@actu.files.attach(params[:files])
	            redirect_to super_admin_actus_path
	        else
	            render :new

	        end  

  end

  def edit
  end

  def index
    @actus = Actu.all
  end
end
