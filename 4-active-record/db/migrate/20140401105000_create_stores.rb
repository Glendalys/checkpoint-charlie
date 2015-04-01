class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, :null => false
      t.string :location, :null => false
      t.string :years_open
      t.string :coat_id

      t.timestamps
    end
  end
end
