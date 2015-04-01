class CreateInventory < ActiveRecord::Migration
  def change
    create_table :inventory do |t|
      t.integer  :coat_id
      t.integer  :store_id

      t.timestamps
    end
  end
end