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
     if @shop.update!(shop_params)
       render status: 200, json: {
          group: "Nice job on the update!"
          }
       end
  end

  def destroy
    @shop = Shop.find(params[:id])
     if @shop.destroy!
     render status: 200, json: {
           group: "You killed it!!!"
         }
       end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def shop_params
    params.permit(:name, :location, :description)
  end
end


private
def json_response(object, status = :ok)
  render json: object, status: status
end

def restaurant_params
  params.permit(:name, :location, :description)
end
end
