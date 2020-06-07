class AddUserPhoneToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_phone, :integer
  end
end
