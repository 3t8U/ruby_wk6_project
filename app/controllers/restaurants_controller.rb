class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    json_response(@restaurants)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    json_response(@restaurant)
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    json_response(@restaurant)
  end

  def update
    @restaurant = Restaurant.find(params[:id])
     if @restaurant.update!(restaurant_params)
       render status: 200, json: {
          group: "Nice job on the update!"
          }
       end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
     if @restaurant.destroy!
       render status: 200, json: {
             group: "You killed it!!!"
           }
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



def horse
  @rest_params do |params|
    params = @rest_params.capitalize.join('')
  end
end
