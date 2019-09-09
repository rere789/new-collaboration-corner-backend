class EventsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    start_on = event_params[:start].gsub("GMT ", "+").to_datetime
    end_on = event_params[:end].gsub("GMT ", "+").to_datetime
    event = Event.create!(event_params)
    # @events = Event.all
    render json: event
  end

  def index
    @events = Event.all
    render json: @events
  end


  private

  def event_params
    params.require(:event).permit(:id, :post_id, :title, :start, :end)
  end
end
# 