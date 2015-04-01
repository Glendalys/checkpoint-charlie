class Store < ActiveRecord::Base
  has_many :stores_coats
  has_many :coats, through: :store_coat
end