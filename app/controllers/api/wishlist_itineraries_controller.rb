class Api::WishlistItinerariesController < ApplicationController
  def index
    @wishlist_itineraries = current_user.wishlist_itineraries
    @wishlist_itineraries = @wishlist_itineraries.where(status: 'Added')
    render 'index.json.jbuilder'
  end

  def create
    @wishlist_itinerary = WishlistItinerary.new(
      user_id: current_user.id,
      itinerary_id: params[:itinerary_id],
      status: 'Added'
      )
    @wishlist_itinerary.save
    render 'show.json.jbuilder'
  end
  
  def destroy
    @wishlist_itinerary = WishlistItinerary.find_by(id: params[:id])
    @wishlist_itinerary.status = 'Removed'
    @wishlist_itinerary.save
    render json: {message: "Itinerary has been removed"}
  end
end
