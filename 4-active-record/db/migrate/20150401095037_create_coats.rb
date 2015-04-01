class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand, null: false
      t.string :color, null: false
      t.integer :length, null: false
      t.decimal :price
      t.integer :store_id
      t.timestamps
    end
  end
end
