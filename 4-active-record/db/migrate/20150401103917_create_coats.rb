class CreateCoats < ActiveRecord::Migration
  def change
       create_table :coats do |t|
      t.integer :coat_store_id, null:false

      t.string   :brand, null: false, limit: 50
      t.string   :color, null: false, limit: 75
      t.decimal  :length, null: false
      t.decimal  :price, null: false

      t.timestamps
    end
  end
end
