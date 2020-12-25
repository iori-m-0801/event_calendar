class EventsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @events = Event.all
  end
  def new
    @event =Event.new
  end
  def create
    Event.create(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:name, :year, :month, :day, :start_hour, :start_minute, :cast, :place, :price_future, :price_today, :ticketlink)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end