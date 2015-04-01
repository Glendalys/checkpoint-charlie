class Store < ActiveRecord::Base
  has_many :coats
  belongs_to :coat, {class_name: "Coat"}
end
