class EventsController < ApplicationController
  def index
    @events = Event.all
    @event_categories = EventCategory.all
  end
end
