class CreateFormeprojets < ActiveRecord::Migration[6.0]
  def change
    create_table :formeprojets do |t|
    	t.belongs_to :forme
    	t.belongs_to :projet

      t.timestamps
    end
  end
end
