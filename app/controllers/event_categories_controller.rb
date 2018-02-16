class EventCategoriesController < ApplicationController
  def show
    @event_category = EventCategory.find(params[:id])
    @events = Event.where(id: @event_category.events)
    @event_categories = EventCategory.all
    
    render template: "events/index"
  end
end
