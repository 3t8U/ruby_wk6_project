class ShopsController < ApplicationController

  def index
    @shops = {"Xtine's XXX": "The secret of getting head is getting started."}
    json_response(@shops)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
