class Coat < ActiveRecord::Base
  has_many :stores, through: :store_coat
end

