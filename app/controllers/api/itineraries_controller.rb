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
      country: params[:country],
      category: params[:category],
      name: params[:name],
      description: params[:description],
      address: params[:address],
      image_url: params[:image_url]
      )
    @itinerary.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @itinerary = Itinerary.find_by(id: the_id)
    @itinerary.update(
      country: params[:country],
      category: params[:category],
      name: params[:name],
      description: params[:description],
      address: params[:address],
      image_url: params[:image_url]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @itinerary = Itinerary.find_by(id: the_id)
    @itinerary.destroy
    render 'show.json.jbuilder'
  end
end