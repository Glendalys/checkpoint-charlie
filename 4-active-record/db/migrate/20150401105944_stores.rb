class Stores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string  :name, limit: 50
      t.string  :location, limit:50
      t.integer :years_opened, limit:10
      t.integer :coat_type_1, limit:50
      t.integer :coat_type_2, limit:50
      t.integer :coat_type_3, limit:50
    end
  end
end
