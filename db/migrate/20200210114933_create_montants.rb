class CreateMontants < ActiveRecord::Migration[6.0]
  def change
    create_table :montants do |t|
    	t.string :price
      t.timestamps
    end
  end
end
