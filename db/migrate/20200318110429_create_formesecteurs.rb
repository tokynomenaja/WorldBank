class CreateFormesecteurs < ActiveRecord::Migration[6.0]
  def change
    create_table :formesecteurs do |t|
    	t.belongs_to :forme, index: true
    	t.belongs_to :secteur, index: true

      t.timestamps
    end
  end
end
