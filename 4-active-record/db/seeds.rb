require_relative '../app/models/coat'
require_relative '../app/models/store'
require_relative '../app/models/storage'
require 'faker'

15.times do
  coat_details = { :brand => Faker::Name.last_name,
                   :color => Faker::Commerce.color,
                   :length => Faker::Number.digit,
                   :price => Faker::Commerce.price }

  Coat.create(coat_details)
end

5.times do
  store_details = { :name => Faker::Company.name,
                    :location => "#{Faker::Address.city}, #{Faker::Address.state_abbr}" ,
                    :years_open => Faker::Number.number(2) }
  Store.create(store_details)
end

Storage.create({:store_id => 1, :coat_id => 1})
Storage.create({:store_id => 1, :coat_id => 2})
Storage.create({:store_id => 1, :coat_id => 3})
Storage.create({:store_id => 2, :coat_id => 2})
Storage.create({:store_id => 2, :coat_id => 4})
Storage.create({:store_id => 2, :coat_id => 6})

