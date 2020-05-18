class AddFirstNameToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :first_name, :string
  end
end
