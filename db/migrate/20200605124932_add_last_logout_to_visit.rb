class AddLastLogoutToVisit < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :last_logout, :datetime
  end
end
