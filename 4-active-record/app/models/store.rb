class Store < ActiveRecord::Base
  has_many :coat_stockists
  has_many :coats, through: :coat_stockists

end
