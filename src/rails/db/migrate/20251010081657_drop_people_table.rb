class DropPeopleTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :people
  end
end
