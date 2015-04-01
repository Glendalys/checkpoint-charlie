class CreateTables < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.integer :years_open, null: false

      t.timestamps
    end

    create_table :coats do |t|
      t.string :brand, null: false
      t.string :color, null: false
      t.integer :length
      t.decimal :price, null: false

      t.timestamps
    end

    create_table :storages do |t|
      t.integer :store_id, null: false
      t.integer :coat_id, null: false

      t.timestamps
    end
  end
end
