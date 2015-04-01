class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string  :name, limit: 20, null: false
      t.string  :location, limit:30, null: false
      t.integer :years_since_first_opened, limit: 3, null: false

      t.timestamps
    end
  end
end
