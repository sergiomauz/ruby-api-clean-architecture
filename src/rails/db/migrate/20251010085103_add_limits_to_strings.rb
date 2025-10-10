class AddLimitsToStrings < ActiveRecord::Migration[8.0]
  def change
    change_column :authors, :name, :string, limit: 150
    change_column :authors, :country, :string, limit: 2
    change_column :authors, :biography, :string, limit: 450

    change_column :books, :title, :string, limit: 120
    change_column :books, :genre, :string, limit: 50
    change_column :books, :isbn, :string, limit: 18

    change_column :readers, :name, :string, limit: 150
    change_column :readers, :code, :string, limit: 8
    change_column :readers, :email, :string, limit: 75
    change_column :readers, :phone, :string, limit: 25

    change_column :loans, :return_date, :date, using: "return_date::date"
  end
end
