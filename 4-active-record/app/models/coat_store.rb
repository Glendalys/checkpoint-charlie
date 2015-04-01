class CoatStore < ActiveRecord::Base

  has_many :coats, { :class_name => "Coat", :foreign_key => :coat_store_id }

  validates :name, :location, { :presence => true }

  validates :years_since_opened, numericality: true



end
