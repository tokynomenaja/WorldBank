class AddEmailToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :email, :string
  end
end
