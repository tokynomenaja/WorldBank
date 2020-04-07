class ContactsController < ApplicationController
	 before_action :authenticate_user!
  def index
    @messages = Message.all
  end
  def create
  	@admin = User.find_by(is_super_admin: true)
  	@message = Message.create!(content: params[:message], sender_id: current_user.id, admin_id: @admin.id)
  	redirect_to root_path, success: "Message envoyé"
  end

  def show
    @message = Message.find(params[:id])
  end
end
