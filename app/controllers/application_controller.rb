class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initialize_current_buyer
  
  def initialize_current_buyer
  	@current_buyer ||= session[:buyer_id] && Buyer.find(session[:buyer_id])
  	if @current_buyer == nil
  		@current_buyer = Buyer.create
  		session[:buyer_id] = @current_buyer.id
  	end
    @current_cart = @current_buyer.orders.where(:confirmed => 'false').first
    if @current_cart == []
  		@current_cart = Order.create(:buyer_id => @current_buyer.id,:confirmed => 'false')
  	end
  end
end
