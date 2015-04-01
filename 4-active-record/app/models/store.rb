class Store < ActiveRecord::Base
  has_many :coats, through: :store_coat
end
