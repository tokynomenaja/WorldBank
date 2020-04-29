class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
    validates :is_signed_in, inclusion: [true, false]
   has_many :projets, foreign_key: 'bailleur_id'
   has_many :actus, foreign_key: 'user_id'
   has_many :publications, foreign_key: 'bailleur_id'
   has_many :publications, foreign_key: 'user_id'
   has_many :messages, foreign_key: 'sender_id'

   after_create :update_admin, :welcome_send, :notify_pusher

    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end
    
	  def update_admin
	  	@user = User.last
	    if @user.is_admin == true
	    	@user.update(is_admin: nil)
	    end
	  end

      def notify_pusher # add this method
        Pusher.trigger('activity', 'login', self.as_json)
      end

      def as_json(options={}) # add this method
        super(
          only: [:id, :email]
        )
      end

	has_one :organisme


end
