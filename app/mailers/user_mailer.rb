class UserMailer < ApplicationMailer

	def welcome_email(user)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @user = user 
	    @admin = User.find(20)
	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = 'http://plateforme-spi.mg/users/sign_in' 

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: [@user.email,@admin.email], subject: 'SECTEUR PRIVÉ ET INDUSTRIALISATION : Compte validé') 
	end

	def check_admin()
		@admin = User.find(20)

		# c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
		mail(to: [@admin.email], subject: 'Email de création de compte') 
	end

	def welcome_visit(user)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @user = user 
	    @admin = User.find(20)

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = 'http://plateforme-spi.mg/users/sign_in' 

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: [@user.email,@admin.email], subject: 'SECTEUR PRIVÉ ET INDUSTRIALISATION : Compte validé') 
	end

	def create_project_email(project)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @project = project

	    @id = @project.id

	    @user = @project.bailleur
	    @admin = User.find(20)

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://plateforme-spi.mg/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: [@user.email,@admin.email], subject: 'Email de validation de projet ') 
	end

	def email_validation(project)
		@project = project

	    @id = @project.id

	    @user = @project.bailleur
	    @admin = User.find(20)

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://plateforme-spi.mg/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: [@user.email,@admin.email], subject: 'SECTEUR PRIVE ET INDUSTRIALISATION : Fiche Projet Validée') 
		
	end


	def email_rejet(project)
		@project = project

	    @id = @project.id

	    @user = @project.bailleur
	    @admin = User.find(20)

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "http://plateforme-spi.mg/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: [@user.email,@admin.email], subject: 'SECTEUR PRIVE ET INDUSTRIALISATION : Fiche Projet Rejetée') 
		
	end



end
