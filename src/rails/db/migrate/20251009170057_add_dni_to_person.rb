class AddDniToPerson < ActiveRecord::Migration[8.0]
  def change
    add_column :people, :dni, :string, limit: 11
    add_index :people, :dni, unique: true    
  end
end
