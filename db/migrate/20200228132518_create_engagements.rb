class CreateEngagements < ActiveRecord::Migration[6.0]
  def change
    create_table :engagements do |t|
    	t.string :title
      t.timestamps
    end
  end
end
