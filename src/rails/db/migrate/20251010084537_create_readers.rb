class CreateReaders < ActiveRecord::Migration[8.0]
  def change
    create_table :readers do |t|
      t.string :name
      t.string :code
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
