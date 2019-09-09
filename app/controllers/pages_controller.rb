class PagesController < ApplicationController
  def calendar
    @events = Event.all
    render json: @events
  end
end
