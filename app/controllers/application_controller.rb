class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	add_flash_types :success, :danger
	before_action :configure_devise_parameters, if: :devise_controller?
	after_action :add_organism, if: :devise_controller?
	before_action :set_online_time, if: proc { user_signed_in?}

	def configure_devise_parameters
	    	devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :phone, :is_alive, :email, :address, :password, :password_confirmation,:is_admin)}
	  		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :phone, :is_alive, :email, :address, :password, :password_confirmation,:is_admin)}
	  
	end

	def add_organism
		@organism = params[:organisme]
		@nom = params[:nom]

		if Ptf.find_by(title: @organism) || Iga.find_by(title: @organism)
			if Ptf.find_by(title: @organism)
				@ptf = Ptf.find_by(title: @organism)
				Organisme.create(user_id: User.last.id, ptf_id: @ptf.id)
			end
			if Iga.find_by(title: @organism)
				@iga = Iga.find_by(title: @organism)
				Organisme.create(user_id: User.last.id, iga_id: @iga.id)
			end
		else
			if @nom
				Organisme.create(user_id: User.last.id, nom: @nom)
			end
		end

	end

	def set_online_time
		start_time = current_user.current_sign_in_at.to_time;
		end_time = Time.now;

		  if(start_time && end_time)
		      minutes = time_diff(start_time, end_time)
		      if(current_user.total_online_time || current_user.total_online_time == nil)
		        minutes = minutes
		      current_user.update_attribute(:total_online_time, minutes)
		  	else
		  		minutes = current_user.total_online_time + minutes
		      current_user.update_attribute(:total_online_time, minutes)
		  end 
					
			end
	end

	private


	def time_diff(start_time, end_time)
	    (end_time - start_time) / 60
	end

	
end
