class Store < ActiveRecord::Base
  has_many :storages
  has_many :coats, :through => :storages
end
