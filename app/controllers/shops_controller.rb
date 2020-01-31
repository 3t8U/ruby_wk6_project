class ShopsController < ApplicationController

  def index
    @shops = Shop.all
    json_response(@shops)
  end

  def show
    @shop = Shop.find(params[:id])
    json_response(@shop)
  end

  def create
    @shop = Shop.create(shop_params)
    json_response(@shop)
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def shop_params
    params.permit(:name, :location, :description)
  end
end
