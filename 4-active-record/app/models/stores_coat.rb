class StoresCoat < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :store
  belongs_to :coat
end
