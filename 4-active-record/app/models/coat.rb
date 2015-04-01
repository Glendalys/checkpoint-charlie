class Coat < ActiveRecord::Base
  has_many :stores, through: :stores_coats
  has_many :stores_coats
end
