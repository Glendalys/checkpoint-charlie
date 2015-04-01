class Coat < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :store
  validates :brand, :color, :length, {:presence => true}
  validates :length, {:numericality => {greater_than_or_equal_to: 1}}
end
