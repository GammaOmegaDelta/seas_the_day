class ItinerariesController < ApplicationController
  def new
    @categories = Category.all
  end

  def create
    @itinerary = itinerary.new(
      country: params[:country],
      name: params[:name],
      description: params[:description],
      address: params[:address],
      category: params[:category]
      )

    @itinerary.save
    Image.create(url: params[:image], itinerary_id: @itinerary.id)
    redirect_to "/itineraries/new"
  end
end
