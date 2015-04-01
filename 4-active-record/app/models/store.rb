class Store < ActiveRecord::Base
  has_many :coats
  # Remember to create a migration!
  validates :name, :location, :years_since_opened, {:presence => true}
  validates :years_since_opened, {:numericality => true}
end
