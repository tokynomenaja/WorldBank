class AddRejetToProjets < ActiveRecord::Migration[6.0]
  def change
    add_column :projets, :rejet, :boolean
  end
end
