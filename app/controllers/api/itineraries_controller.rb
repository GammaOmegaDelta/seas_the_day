class Api::ItinerariesController < ApplicationController
  def index
    @itineraries = current_user.itineraries
    render 'index.json.jbuilder'
  end

  def create
    wishlist_itineraries = current_user.wishlist_itineraries
    wishlist_itineraries = wishlist_itineraries.where(status: 'Added')

    @activity = activity.new(
      user_id: current_user.id,
      itinerary_id: params[:itinerary_id]
      )
    @itinerary.save

    wishlist_itineraries.each do |wishlist_itinerary|
      wishlist_itinerary.activity_id = @activity.id
      wishlist_itinerary.status = 'Completed'
      wishlist_itinerary.save
    end
    render 'show.json.jbuilder'
  end

  def show
    @itinerary = itinerary.find_by(id params[:id])
    render 'show.json.jbuilder'
  end
end

# needs adjustment to correspond to activities.