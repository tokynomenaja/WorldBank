class CreateAppuis < ActiveRecord::Migration[6.0]
  def change
    create_table :appuis do |t|
    		t.string :title
      t.timestamps
    end
  end
end
