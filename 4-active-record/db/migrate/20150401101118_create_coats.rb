class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color
      t.integer :length
      t.decimal :list_price
    end
  end
end
