class Api::WarehousesController < ApplicationController
  def create
    super
    head :created
  end


  private

  def build_resource
    @resource = Warehouse.new resource_params
  end


  def resource
    @resource ||= Warehouse.find(params[:id])
  end


  def collection
    @collection = Warehouse.page(params[:page]).per(5)
  end

  def resource_params
    params.require(:warehouse).permit(:email)
  end

end
