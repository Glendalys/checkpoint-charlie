class Coat < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :store
  validates :color, :brand, :length, { :presence => true}
end
