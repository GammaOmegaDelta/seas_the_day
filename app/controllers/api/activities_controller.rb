class Api::ActivitiesController < ApplicationController
  before_action :authenticate_user

  def index
    @activities = current_user.activities
    render 'index.json.jbuilder'
  end

  def create
    wishlist_itineraries = current_user.wishlist_itineraries
    wishlist_itineraries = wishlist_itineraries.where(status: 'added')

    @activity = activity.new(
      user_id: current_user.id,
      )
    @activity.save

    wishlist_itineraries.each do |wishlist_itinerary|
      wishlist_itinerary.activity_id = @activity.id
      wishlist_itinerary.status = 'completed'
      wishlist_itinerary.save
    end
    render 'show.json.jbuilder'
  end

  def show
    @activity = activity.find_by(id params[:id])
    render 'show.json.jbuilder'
  end
end
