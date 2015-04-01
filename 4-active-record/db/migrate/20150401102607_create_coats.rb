class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand, null: false
      t.string :style, null: false
      t.string :size, null: false, limit: 1
      t.string :color, null: false
      t.decimal :price, null: false, precision: 8, scale: 2

      t.timestamps
    end
  end
end
