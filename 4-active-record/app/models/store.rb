class Store < ActiveRecord::Base
  # has_many :coats
  validates :name, :location, :years_open, {:presence => true}
end
