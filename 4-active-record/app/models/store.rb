class Store < ActiveRecord::Base
  # validates_associated :coats
  # validates :name, length { maximum: 30 }
    validates :years_open, {minimum: 0}
    has_many :coats, { :class_name => "Coat", :foreign_key => :coat_id }


end
