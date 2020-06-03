 class SessionsController < Devise::SessionsController
      after_action :notify_pusher_login, only: :create
      before_action :notify_pusher_logout, only: :destroy
      after_action :after_login, only: :create

      def notify_pusher_login
        user = User.find(current_user.id)
        user.update(is_signed_in: true)
        notify_pusher 'login'
      end

      def notify_pusher_logout
        user = User.find(current_user.id)
        user.update(is_signed_in: false)
        notify_pusher 'logout'
      end

      def notify_pusher(activity_type)
        Pusher.trigger('activity', activity_type, current_user.as_json)
      end

      def after_login
        if current_user.visits
          if current_user.visits.count >= 1
            current_user.visits.each do |v|
            if v.created_at == current_user.visits.last.created_at
              v.update(updated_at: Time.now)
            else
              Visit.create!(user_id: current_user.id)
            end
          end
        else
          Visit.create!(user_id: current_user.id)
        end



        end
        
      end
end