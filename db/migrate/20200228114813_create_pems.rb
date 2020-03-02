class CreatePems < ActiveRecord::Migration[6.0]
  def change
    create_table :pems do |t|
    	t.string :title

    	t.belongs_to :engagement, index: true
      t.timestamps
    end
  end
end
