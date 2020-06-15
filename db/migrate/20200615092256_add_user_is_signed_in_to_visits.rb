class AddUserIsSignedInToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :is_signed_in, :boolean
  end
end
