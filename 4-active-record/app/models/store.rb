class Store < ActiveRecord::Base
  has_many :joins
  has_many :coats, through: :joins
end
