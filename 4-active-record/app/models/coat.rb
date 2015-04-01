class Coat < ActiveRecord::Base
  has_many :stores, through: :stores_coats
  has_many :stores_coats

  validates :brand, {:presence => true }
  validates :color, {:presence => true }
  validates :length_in_inches, {:numericality => true, :presence => true }
  validates :price_in_dollars, {:numericality => true, :presence => true }
end
