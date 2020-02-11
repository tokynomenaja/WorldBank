class CreateZoneprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :zoneprojets do |t|
    	t.belongs_to :zone
    	t.belongs_to :projet

      t.timestamps
    end
  end
end
