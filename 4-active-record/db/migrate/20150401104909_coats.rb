class Coats < ActiveRecord::Migration
  def change
     create_table :coats do |t|
      t.string  :brand, limit: 20
      t.string  :color,  limit:20
      t.integer :length,  limit:10
      t.integer :price, limit:25
      t.integer :store_id, limit:50
      t.integer :coat_type_id, limit:50
    end
  end
end

