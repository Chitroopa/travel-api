class DestinationsController < ApplicationController

  def index
  @destinations = {"destinations": "France"}
  json_response(@destinations)
  end

  def show
    @destination = Destination.find(params[:id])
    json_response(@destination)
  end

  def create
    @destination = Destination.create!(destination_params)
    json_response(@destination, :created)
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update!
      render status: 200, json: {
        message: "Destination deleted"
      }
      end
    end

  def destroy
    @destination = Destination.find(params[:id])
    if @destination.destroy!
      render status: 200, json: {
        message: "Destination deleted"
      }
    end
  end


  private
  def json_response(object)
    render json: object, status: :ok
  end

  def destination_params
    params.permit(:name, :country, :city, :review)
  end
end
