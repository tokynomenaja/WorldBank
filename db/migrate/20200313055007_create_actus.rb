class CreateActus < ActiveRecord::Migration[6.0]
  def change
    create_table :actus do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
