class CreateStores < ActiveRecord::Migration
  def change
  	create_table :stores do |t|
  		t.string :name
  		t.string :address
  		t.integer :years_open

  		t.timestamps
  	end
  end
end
