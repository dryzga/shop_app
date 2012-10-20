class OrderItemsController < ApplicationController
	def destroy
		@orderitem = OrderItem.find(params[:id])
		@orderitem.destroy
		redirect_to :back
	end
  end