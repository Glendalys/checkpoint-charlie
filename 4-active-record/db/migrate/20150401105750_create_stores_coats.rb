class CreateStoresCoats < ActiveRecord::Migration
  def change
    create_table :stores_coats do |t|
      t.integer :store_id, null: false, unique: true
      t.integer :coat_id, null: false, unique: true
    end
  end
end
