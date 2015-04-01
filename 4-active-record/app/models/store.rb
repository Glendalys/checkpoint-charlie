class Store < ActiveRecord::Base
  has_many :coats, through: :stores_coats
  has_many :stores_coats

  validates :name, {:presence => true}
  validates :location, {:presence => true}
  validates :years_open, {:presence => true}

end
