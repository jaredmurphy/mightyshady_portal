class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find_by(id: params[:id])

    if @event.nil?
      not_found
    else
      render json: @event
    end
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    @event = Event.find_by(id: params[:id])
    if @event.update(event_params)
      render json: @event, status: 200
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :event_category_id)
    end
end
