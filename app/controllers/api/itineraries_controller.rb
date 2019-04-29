class Api::ItinerariesController < ApplicationController
  def index
    if params[:search]
      @itineraries = Itinerary.where("name LIKE ?", "%#{params[:search]}%")
    else
      @itineraries = Itinerary.all
    end
    render 'index.json.jbuilder'
  end
    # @itineraries = Itinerary.all
    # render 'index.json.jbuilder'

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
      address: params[:address]
      )
    if @itinerary.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    @itinerary = Itinerary.find_by(id: the_id)
    @itinerary.update(
      country: params[:country],
      category: params[:category],
      name: params[:name],
      description: params[:description],
      address: params[:address]
      )
    if @itinerary.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @itinerary.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    the_id = params[:id]
    @itinerary = Itinerary.find_by(id: the_id)
    @itinerary.destroy
    render 'show.json.jbuilder'
  end
end