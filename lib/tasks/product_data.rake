task :product_data => :environment do
	10.times do
		Category.create(name: Faker::Commerce.department(1))
	end

	100.times do
		product = Product.new
		product.name = Faker::Commerce.product_name
		product.price = Faker::Commerce.price(100..1000)
		product.category_id = Category.all.sample.id
		product.save
	end
end



