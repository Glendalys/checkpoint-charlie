class Coat < ActiveRecord::Base
  belongs_to :coat_store

  validates :brand, :color, { :presence => true }

  validates :length, :price, {numericality: true}


end
