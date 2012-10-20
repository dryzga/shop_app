class Admin::AdminController < ActionController::Base
	before_filter :authenticate_user!
	def index
		render :text => 'Hello'
	end
end