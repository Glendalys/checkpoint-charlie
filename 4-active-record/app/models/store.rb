class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :location, length: { maximum: 30 }
end
