class AddLastNameToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :last_name, :string
  end
end
