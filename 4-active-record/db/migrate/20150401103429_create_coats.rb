class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color
      t.integer :length
      t.string :size
      t.integer :store_id

      t.timestamps
    end
  end
end
