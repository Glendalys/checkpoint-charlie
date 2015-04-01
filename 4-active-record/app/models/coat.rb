class Coat < ActiveRecord::Base
  has_many :coat_stockists
  has_many :stores, through: :coat_stockists

end
