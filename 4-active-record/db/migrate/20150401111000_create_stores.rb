class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string   :name
      t.string   :location
      t.integer  :years_since_first_opened

      t.timestamps
    end
  end
end