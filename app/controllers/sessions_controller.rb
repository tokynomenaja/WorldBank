 class SessionsController < Devise::SessionsController
      after_action :notify_pusher_login, only: :create
      before_action :notify_pusher_logout, only: :destroy

      def notify_pusher_login
        user = User.find(current_user.id)
        user.update(is_signed_in: true)
        if current_user.organisme
          if current_user.organisme.ptf != nil
            organisme = current_user.organisme.ptf.title
          elsif current_user.organisme.iga != nil
            organisme = current_user.organisme.iga.title
          else
            organisme = current_user.organisme.nom
          end
        end
          
          if Visit.last
            if Visit.last.user_total_online_time == nil 
              total_online_time = (Time.now - Visit.last.created_at.to_time) / 60
              Visit.last.update(user_total_online_time: total_online_time)
              Visit.create!(user_id: current_user.id, user_ip: current_user.current_sign_in_ip, user_organisme: organisme, user_phone: current_user.phone, user_fonction: current_user.fonction, user_last_sign_in_at: current_user.current_sign_in_at, user_email: current_user.email)
            else
              Visit.create!(user_id: current_user.id, user_ip: current_user.current_sign_in_ip, user_organisme: organisme, user_phone: current_user.phone, user_fonction: current_user.fonction, user_last_sign_in_at: current_user.current_sign_in_at, user_email: current_user.email)
            end
          end

        notify_pusher 'login'
      end

      def notify_pusher_logout
        user = User.find(current_user.id)
        user.update(is_signed_in: false)
        visit = Visit.where(user_id: current_user.id)
        
          start_time = current_user.current_sign_in_at.to_time;
          end_time = Time.now;
          if(start_time && end_time)
              minutes = time_diff(start_time, end_time)
              if visit.count >= 1
                if(visit.last.user_total_online_time || visit.last.user_total_online_time == nil)
                  minutes = minutes
                
                visit.last.update(user_total_online_time: minutes)
                else
                minutes = visit.last.user_total_online_time + minutes
                visit.last.update(user_total_online_time: minutes)
                end 
           

              end 
              
          end
        
        notify_pusher 'logout'
      end

      def notify_pusher(activity_type)
        Pusher.trigger('activity', activity_type, current_user.as_json)
      end

    private


    def time_diff(start_time, end_time)
        (end_time - start_time) / 60
    end


end