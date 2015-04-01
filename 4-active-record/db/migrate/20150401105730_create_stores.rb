class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.integer :years_since_opened, allow_blank: true
      t.integer :coat_id

      t.timestamps
    end
  end
end
