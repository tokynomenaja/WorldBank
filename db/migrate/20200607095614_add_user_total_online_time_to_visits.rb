class AddUserTotalOnlineTimeToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_total_online_time, :float
  end
end
