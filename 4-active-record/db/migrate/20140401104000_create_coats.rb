class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color
      t.integer :price
      t.integer :length

      t.timestamps
    end
  end
end
