class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.integer :years_since_opened, null: false
      t.timestamps
    end
  end
end
