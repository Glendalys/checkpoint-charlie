Coat.create({ :brand => "FUBU",
              :color => "black",
              :price => 300,
              :length => 28
              })
Coat.create({ :brand => "Coochi",
              :color => "mauve",
              :price => 200,
              :length => 30
              })

Store.create({name: "Eastwood", location: "Rochester", years_open: 6, coat_id: 1})
Store.create({name: "Monroe", location: "Fairport", years_open: 2, coat_id: 2})
