task :clear_products => :environment do
	Category.delete_all
	Product.delete_all
end