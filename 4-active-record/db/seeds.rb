coat = {
	:brand => "test brand",
	:color => "blue",
	:size => 5,
	:price => 99.99,
}

test_coat = Coat.new(coat)
test_coat.save

store = {
	:name => "test store",
	:address => "Wall st.",
	:years_open => 40,
}

test_store = Store.new(store)
test_store.save

test_join = Join.new({coats_id: 1, stores_id: 1})
test_join.save