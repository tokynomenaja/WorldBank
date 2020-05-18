class AddFonctionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fonction, :string
  end
end
