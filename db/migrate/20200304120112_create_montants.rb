class CreateMontants < ActiveRecord::Migration[6.0]
  def change
    create_table :montants do |t|
      t.integer :price
      t.belongs_to :unite, index: true

      t.timestamps
    end
  end
end
