class CreateIgas < ActiveRecord::Migration[6.0]
  def change
    create_table :igas do |t|
    	t.string :title
      t.timestamps
    end
  end
end
