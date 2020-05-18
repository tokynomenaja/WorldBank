class SuperAdmin::ContactsController < ApplicationController
	before_action :authenticate_user!
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
end



  private 
  def paramsMessage
  	params[:read]
  end
end
