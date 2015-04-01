class Coat < ActiveRecord::Migration
  def change
    create_table :coat do |t|
      t.string   :brand, null: false, limit: 50
      t.string   :color, null: false
      t.integer  :length, null: 2
      t.integer  :price, null: false

      t.timestamps
  end
end
