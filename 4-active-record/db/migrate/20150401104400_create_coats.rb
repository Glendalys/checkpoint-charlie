class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand, :null, false
      t.string :color, :null, false
      t.integer :length_in_inches, :numeric, true, :null, false
      t.float :price_in_dollars, :numeric, true, :null, false

      t.timestamps
    end
  end
end
