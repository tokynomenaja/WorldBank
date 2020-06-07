class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.inet :user_ip
      t.string :user_email

      t.timestamps
    end
  end
end
