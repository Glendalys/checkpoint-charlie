class StoreCoat < ActiveRecord::Base
  self.table_name = "stores_coats"
  belongs_to :store
  belongs_to :coat
end
