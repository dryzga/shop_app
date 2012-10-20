class Order< ActiveRecord::Base
	attr_accessible :buyer_id,:confirmed
	belongs_to :buyer
	has_many :order_items
end