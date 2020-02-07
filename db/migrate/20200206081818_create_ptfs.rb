class CreatePtfs < ActiveRecord::Migration[6.0]
  def change
    create_table :ptfs do |t|
    	t.string :title
      
      t.timestamps
    end
  end
end
