class ShopController < ActionController::Base
	def index
		@categories = Category.all
		@products = Product.all
	end
  end