class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.belongs_to :sender, index: true
      t.belongs_to :admin, index: true
      t.timestamps
    end
  end
end
