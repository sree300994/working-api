class Api::V1::ProductsController < ApplicationController

	def index
		if params[:price]
			@products = params[:price] == "asc" ? Product.order('price') : Product.order('price DESC')
		else
			@products = Product.all
		end
	end

	def show
		@product = Product.find(params[:id])
	end
end
