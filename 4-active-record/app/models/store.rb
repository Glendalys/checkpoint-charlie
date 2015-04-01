class Store < ActiveRecord::Base
  has_many :coats, through: :stores_coats
  has_many :stores_coats
end
