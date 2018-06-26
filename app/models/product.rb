class Product < ActiveRecord::Base

	belongs_to :category
	validates_presence_of :name, :price, :category_id
	validates_numericality_of :price, :category_id
end
