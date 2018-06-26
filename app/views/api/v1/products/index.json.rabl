collection @products
attributes :id, :name, :price

child :category do
	attributes :name
end

