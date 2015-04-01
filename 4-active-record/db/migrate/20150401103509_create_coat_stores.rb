class CreateCoatStores < ActiveRecord::Migration
  def change

    create_table :coat_stores do |t|
      t.string   :name, null: false, limit: 50
      t.string   :location, null: false, limit: 75
      t.integer  :years_since_opened, null: false

      t.timestamps
    end
  end
end
