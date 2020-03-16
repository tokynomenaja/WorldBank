class ContactsController < ApplicationController
	 before_action :authenticate_user!
  def index

  end
  def create
  	@admin = User.find_by(is_super_admin: true)
  	@message = Message.create!(content: params[:message], sender_id: current_user.id, admin_id: @admin.id)
  	redirect_to root_path
  end
end
