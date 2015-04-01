class StoreCoat < ActiveRecord::Base
  belongs_to :coat
  belongs_to :store
end
