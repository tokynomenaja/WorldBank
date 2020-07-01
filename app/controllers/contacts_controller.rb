class ContactsController < ApplicationController

    after_action :add_organism
 
  def index
    @messages = Message.all
  end

  def create
    if current_user
    	@admin = User.find_by(is_super_admin: true)
    	@message = Message.create!(content: params[:message], sender_id: current_user.id, admin_id: @admin.id,fonction: params[:fonction])
    	redirect_to root_path, success: "Message envoyé à l'administrateur du site"
    else
      @emails = []
      @users = User.all
      @users.each do |u|
        @emails << u.email
      end

      if @emails.include? params[:email]
        @user = User.find_by(email: params[:email])
        @message = Message.create!(content: params[:message], sender_id: @user.id, email: params[:email], phone: params[:phone], first_name: params[:first_name], last_name: params[:last_name], fonction: params[:fonction])
        redirect_to root_path, success: "Message envoyé à l'administrateur du site"
      else
        @message = Message.create!(content: params[:message], email: params[:email], phone: params[:phone], first_name: params[:first_name], last_name: params[:last_name], fonction: params[:fonction])
        redirect_to root_path, success: "Message envoyé à l'administrateur du site"
      end
    end

  end

  def show
    @message = Message.find(params[:id])
  end

  def add_organism
    @organism = params[:organisme]
    @nom = params[:nom]

    if Ptf.find_by(title: @organism) || Iga.find_by(title: @organism)
      if Ptf.find_by(title: @organism)
        @ptf = Ptf.find_by(title: @organism)
        OrganismeContact.create(message_id: Message.last.id, ptf_id: @ptf.id)
      end
      if Iga.find_by(title: @organism)
        @iga = Iga.find_by(title: @organism)
        OrganismeContact.create(message_id: Message.last.id, iga_id: @iga.id)
      end
    else
      if @nom
        OrganismeContact.create(message_id: Message.last.id, title: @nom)
      end
    end

  end
end
