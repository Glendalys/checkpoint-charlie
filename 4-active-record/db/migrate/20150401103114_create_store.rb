class CreateStore < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.integer :year_opened
      t.timestamps
    end
  end
end
