class Admin::OrdersController < Admin::AdminController


  def index
    @orders = Order.where(:confirmed => 'true')
  end

  
  def destroy
    @orders = Order.find(params[:id])
    @orders.destroy

    redirect_to :back
    
  end
end