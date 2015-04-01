class Store < ActiveRecord::Base
  # Remember to create a migration!
  has_many :coats
  validates :name, :location, :year_opened, { :presence => true}
end
