class UserMailer < ApplicationMailer

	def welcome_email(user)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @user = user 

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = 'http://82.165.122.74/users/sign_in' 

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'Email de validation de compte ') 
	end

	def create_project_email(project)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @project = project

	    @id = @project.id

	    @user = @project.bailleur

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://82.165.122.74/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'Email de validation de projet ') 
	end

	def email_validation(project)
		@project = project

	    @id = @project.id

	    @user = @project.bailleur

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://82.165.122.74/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'SECTEUR PRIVE-FINANCE : Fiche Projet Validée') 
		
	end


	def email_rejet(project)
		@project = project

	    @id = @project.id

	    @user = @project.bailleur

	    @admin = "hraveloson@worldbank.org"

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://82.165.122.74/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'SECTEUR PRIVE-FINANCE : Fiche Projet Rejetée') 
		
	end



end
