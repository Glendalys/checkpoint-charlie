class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color, :null =>
      t.integer :price
      t.integer :length, :null => false

      t.timestamps
    end
  end
end
