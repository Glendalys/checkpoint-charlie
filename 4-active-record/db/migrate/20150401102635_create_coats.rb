class CreateCoats < ActiveRecord::Migration
  def change
  	create_table :coats do |t|
  		t.string :brand
  		t.string :color
  		t.integer :size
  		t.decimal :price

  		t.timestamps
  	end
  end
end
