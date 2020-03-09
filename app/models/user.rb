class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
   has_many :projets, foreign_key: 'bailleur_id'

   after_create :update_admin

	  def update_admin
	  	@user = User.last
	    if @user.is_admin == true
	    	@user.update(is_admin: nil)
	    end
	  end

	has_one :organisme


end
