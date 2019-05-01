class Api::ActivitiesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:search]
      @activities = Activity.where("name LIKE ?", "%#{params[:search]}%")
    else
      @activities = Activity.all
    end
    render 'index.json.jbuilder'
  end
    # @itineraries = Itinerary.all
    # render 'index.json.jbuilder'

  def show
    the_id = params[:id]
    @activity = Activity.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @activity = Activity.new(
      country: params[:country],
      name: params[:name],
      description: params[:description],
      address: params[:address]
      )
    if @activity.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    @activity = Activity.find_by(id: the_id)
    @activity.update(
      country: params[:country],
      name: params[:name],
      description: params[:description],
      address: params[:address]
      )
    if @activity.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @activity.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    the_id = params[:id]
    @activity = Activity.find_by(id: the_id)
    @activity.destroy
    render 'show.json.jbuilder'
  end
end
