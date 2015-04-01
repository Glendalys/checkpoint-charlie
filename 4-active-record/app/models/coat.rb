class Coat < ActiveRecord::Base
  has_many :storages
  has_many :stores, :through => :storages
end
