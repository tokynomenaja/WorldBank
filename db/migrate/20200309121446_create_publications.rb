class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
    	t.string :title
    	t.text :description
    	t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
