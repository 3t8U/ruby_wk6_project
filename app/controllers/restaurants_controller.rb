class RestaurantsController < ApplicationController

  def index
    @restaurants = {"Billy's Trough House": "85 Drury Lane"}
    json_response(@restaurants)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
