class ContactsController < ApplicationController

      after_action :add_organism
 
  def index
    @messages = Message.all
  end

  def create
    if current_user
    	@admin = User.find_by(is_super_admin: true)
    	@message = Message.create!(content: params[:message], sender_id: current_user.id, admin_id: @admin.id)
    	redirect_to root_path, success: "Message envoyé"
    else
      @message = Message.create!(content: params[:message], email: params[:email], phone: params[:phone])
      redirect_to root_path, success: "Message envoyé"
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
end
