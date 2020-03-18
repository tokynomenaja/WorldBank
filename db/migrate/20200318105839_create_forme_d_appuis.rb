class CreateFormeDAppuis < ActiveRecord::Migration[6.0]
  def change
    create_table :forme_d_appuis do |t|
    	t.string :title
      
      t.timestamps
    end
  end
end
