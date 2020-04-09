class UserMailer < ApplicationMailer

	def welcome_email(user)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @user = user 

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = 'https://world-bank-secteur-prive.herokuapp.com/users/sign_in' 

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'Email de validation de compte ') 
	end

	def create_project_email(project)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @project = project

	    @id = @project.id

	    @user = @project.bailleur

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    @url  = "https://world-bank-secteur-prive.herokuapp.com/admin/projets/#{@id}"

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'Email de validation de projet ') 
	end

end
