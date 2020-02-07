class CreateSecteurs < ActiveRecord::Migration[6.0]
  def change
    create_table :secteurs do |t|
      t.string :title
  
      t.timestamps
    end
  end
end
