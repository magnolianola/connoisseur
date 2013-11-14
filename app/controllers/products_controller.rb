class ProductsController < ApplicationController
	require 'open-uri'

	def index
		products_json = open("http://lcboapi.com/products?page=10").read
		@products = JSON.parse(products_json)
	end

	def show
		products_json = open("http://lcboapi.com/products/#{params[:id]}").read
		@products = JSON.parse(products_json)
		@product = @products['result']
	end
end