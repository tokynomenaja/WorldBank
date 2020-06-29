class AddDurationToVisit < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :duration, :float
  end
end
