class AddUserFonctionToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_fonction, :string
  end
end
