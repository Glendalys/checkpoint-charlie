class Coat < ActiveRecord::Base
  # validates_associated :store
  # validates :color, length {maximum: 15}
  # validates :length, length {is: 2, invalid_length: "length must be a 2 digit number"}
  belongs_to :store, { class_name: "Store" }

end
