class AddUserLastSignInAtToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_last_sign_in_at, :datetime
  end
end
