class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :location, null: false, unique: true
      t.integer :years_since_opened,   {:numericality => {greater_than_or_equal_to: 0 }}
      t.integer :sq_footage, {:numericality => {greater_than_or_equal_to: 0 }}
    end
  end
end
