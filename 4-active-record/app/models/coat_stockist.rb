class CoatStockist < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :coat
  belongs_to :store
end
