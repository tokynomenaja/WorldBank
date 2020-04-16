class AddRevalidToProjets < ActiveRecord::Migration[6.0]
  def change
    add_column :projets, :revalid, :boolean, default: false
  end
end
