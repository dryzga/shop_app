class Product < ActiveRecord::Base
	belongs_to :category	
	attr_accessible :name, :description, :price,:category_id	
end