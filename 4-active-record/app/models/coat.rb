class Coat < ActiveRecord::Base
  has_many :joins
  has_many :stores, through: :joins
end
