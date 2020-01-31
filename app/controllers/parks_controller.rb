class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create(park_params)
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
     if @park.update!(park_params)
    render status: 200, json: {
       group: "Nice job on the update!"
       }
    end
  end

  def destroy
    @park = Park.find(params[:id])
     if @park.destroy!
    render status: 200, json: {
          group: "You killed it!!!"
        }
      end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def park_params
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
