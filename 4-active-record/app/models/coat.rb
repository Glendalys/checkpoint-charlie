class Coat < ActiveRecord::Base
  has_many :stores_coats
  has_many :stores, through: :store_coat
end

