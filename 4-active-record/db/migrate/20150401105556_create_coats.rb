class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color
      t.integer :length
      t.integer :price

      t.timestamps
    end
  end
end
