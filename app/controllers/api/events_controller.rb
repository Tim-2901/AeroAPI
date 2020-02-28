module Api
  class EventsController < ApplicationController
    before_action :set_event, only: [:update, :destroy]

    def show
      render json: Event.all
    end

    def create
      @event = Event.create!(recipe_params)
    end

    def update
      @event.update(event_params)
      head :no_content
    end

    def destroy
      @event.destroy
      head :no_content
    end

    def event_params
      params.permit(:name, :plant, :pressure, :daytime)
    end

    def set_event
      @event = Event.find(params[:id])
    end
  end
end