class Api::ProductsController < ApplicationController


  def collection
    @collection = Product.page(params[:page]).per(5)
  end

end
