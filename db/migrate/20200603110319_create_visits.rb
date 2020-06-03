class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
