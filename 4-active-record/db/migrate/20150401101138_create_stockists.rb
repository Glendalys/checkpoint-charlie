class CreateStockists < ActiveRecord::Migration
  def change
    create_table :coat_stockists do |t|
      t.integer :coat_id
      t.integer :store_id
      t.decimal :price
    end
  end
end
