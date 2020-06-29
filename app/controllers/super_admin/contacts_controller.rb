class SuperAdmin::ContactsController < ApplicationController
	before_action :authenticate_user!
  before_action :check_if_super_admin
  def index
    @messages = Message.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
  	@message = Message.find(params[:id])
  end

  def update
  	@message = Message.find(params[:id])
  	if paramsMessage == 'Marquer comme lu'
  		@message.update(read: true)
  	elsif paramsMessage == 'Marquer comme non lu'
  		@message.update(read: nil)
  	end
  	redirect_to super_admin_contacts_path
  end

def destroy
  @message = Message.find(params[:id])
  @message.destroy
  redirect_to super_admin_contacts_path
end

def check_if_super_admin
  if current_user.is_super_admin == false
    redirect_to root_path, success: "Vous n'êtes pas administrateur"
  end
  end



  private 
  def paramsMessage
  	params[:read]
  end
end
