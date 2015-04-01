# Code to populate the database ...
c1  = Coat.create!({brand:'Gannex', color:'Navy blue', length:56, list_price:49.99})
c2  = Coat.create!({brand:'North Face', color:'Gray', length:40, list_price:89.99})

macy = Store.create!({name: 'Macys', location: 'Herald Square', opened_on: '1858-04-01'})
bloomie = Store.create!({name: 'Bloomingdales', location: '59th and Lex', opened_on: '1900-02-03'})

c1.coat_stockists.build(store: macy, price: 39.99)
c1.coat_stockists.build(store: bloomie, price: 44.99)
c1.save!

c2.coat_stockists.build(store: macy, price: 79.99)
c2.coat_stockists.build(store: bloomie, price: 84.99)
c2.save!
