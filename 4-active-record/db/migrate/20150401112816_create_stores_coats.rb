class CreateStoresCoats < ActiveRecord::Migration
  def change
    create_table :stores_coats do |t|
      t.integer :store_id
      t.integer :coat_id

      t.timestamps
    end
  end
end