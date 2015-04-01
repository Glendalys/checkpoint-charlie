class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string  :brand, limit: 30, null: false
      t.string  :color, limit:30, null: false
      t.integer :length, limit: 3
      t.integer :price, limit: 10, null: false
      t.integer :size, limit: 2


      t.timestamps
    end
  end
end
