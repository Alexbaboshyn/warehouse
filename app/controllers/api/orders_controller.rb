class Api::OrdersController < ApplicationController


  private

  def build_resource
    @resource = Order.new resource_params
  end


  def resource
    @resource 
  end


  def resource_params
    params.require(:order).permit(:product_id, :quantity)
  end

end
