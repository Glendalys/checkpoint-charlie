class CreateStoresCoats < ActiveRecord::Migration
  def change
    create_table :stores_coats do |t|
      t.integer :store_id, :numeric, true, :null, false
      t.integer :coat_id, :numeric, true, :null, false
    end
  end
end
