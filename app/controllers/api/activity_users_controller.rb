class Api::ActivityUsersController < ApplicationController
  def index
    @activity_users = current_user.activity_users
    @activity_users = @activity_users.where(status: 'Added')
    render 'index.json.jbuilder'
  end

  def create
    @activity_user = ActivityUser.new(
      user_id: current_user.id,
      activity_id: params[:activity_id],
      status: 'Added'
      )
    @activity_user.save
    render 'show.json.jbuilder'
  end

  def destroy
    @activity_user = ActivityUser.find_by(id: params[:id])
    @activity_user.status = 'Removed'
    @activity_user.save
    render json: {message: "Activity has been removed"}
  end
end