class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :brand
      t.string :color
      t.integer :length,   {:numericality => {greater_than_or_equal_to: 0 }}
      t.integer :price, {:numericality => {greater_than_or_equal_to: 0 }}
    end
  end
end
