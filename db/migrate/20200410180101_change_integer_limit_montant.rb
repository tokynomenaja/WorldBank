class ChangeIntegerLimitMontant < ActiveRecord::Migration[6.0]
  def change
  	change_column :montants, :price, :integer, limit: 8
  end
end
