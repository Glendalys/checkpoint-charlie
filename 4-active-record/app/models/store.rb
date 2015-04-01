class Store < ActiveRecord::Base
  has_many :coats

  validates :name, :location, :years_since_opened, {:presence => true}
  validates :years_since_opened, {:numericality => true}
end
