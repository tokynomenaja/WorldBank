class ApplicationController < ActionController::Base
	add_flash_types :success, :danger
	before_action :configure_devise_parameters, if: :devise_controller?
	after_action :add_organism, if: :devise_controller?

	def configure_devise_parameters
	    	devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :phone, :is_alive, :email, :address, :password, :password_confirmation,:is_admin)}
	  		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :phone, :is_alive, :email, :address, :password, :password_confirmation,:is_admin)}
	  
	end

	def add_organism
		@organism = params[:organisme]

		if Ptf.find_by(title: @organism)
			@ptf = Ptf.find_by(title: @organism)
			Organisme.create(user_id: User.last.id, ptf_id: @ptf.id)
			puts "*" * 100
			puts @ptf
			puts "*" * 100
		end
		if Iga.find_by(title: @organism)
			@iga = Iga.find_by(title: @organism)
			Organisme.create(user_id: User.last.id, iga_id: @iga.id)
			puts "*" * 100
			puts @iga
			puts "*" * 100
		end

	end

	
end
