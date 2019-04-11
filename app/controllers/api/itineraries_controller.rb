class Api::ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @itinerary = Itinerary.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @itinerary = Itinerary.new(
      )
    render 'show.json.jbuilder'
  end

  def update
    render 'show.json.jbuilder'
  end

  def destroy
    render 'show.json.jbuilder'
  end
end
