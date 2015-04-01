class CreateJoins < ActiveRecord::Migration
  def change
  	create_table :joins do |t|
  		t.belongs_to :coats, index: true
  		t.belongs_to :stores, index: true

  		t.timestamps
  	end
  end
end
