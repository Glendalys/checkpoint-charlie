class Coat < ActiveRecord::Base
  # belongs_to :store
  validates :brand, :style, :color, :price, {:presence => true}
  validates :size, {:presence => true, :inclusion => {in: %w(s m l)}}
end


