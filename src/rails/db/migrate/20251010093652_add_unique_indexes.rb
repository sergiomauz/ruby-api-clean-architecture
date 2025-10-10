class AddUniqueIndexes < ActiveRecord::Migration[8.0]
  def change
    add_index :readers, :code, unique: true
    add_index :readers, :email, unique: true

    add_index :books, :isbn, unique: true
  end
end
