class DestinationsController < ApplicationController

  def index
  @destinations = Destination.all
  if params[:city]
    @destinations = Destination.search(params[:city])
  elsif params[:country]
    @destinations = Destination.search_country(params[:country])
  elsif params[:most_popular]
     @destinations = Destination.popular_destinations
  end
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
    if @destination.update!(destination_params)
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
