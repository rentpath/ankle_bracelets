class MyOrganizationEventsController < ApplicationController
  before_action :authenticate_user!, only: :volunteer
  before_action :set_organization
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @event = @organization.events.build
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.organization = @organization

    if @event.save
      redirect_to my_organization_my_organization_event_path(@organization, @event), notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to my_organization_my_organization_event_path(@organization, @event), notice: 'Event was successfully created.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to my_organization_my_organization_event_path(@organization, notice: 'Event was successfully destroyed.')
  end


  private
  def set_organization
    @organization = Organization.find(params[:my_organization_id])
  end

  def set_event
    @event = @organization.events.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :description, :name, :address1, :address2, :city, :state, :zip, :organization_id)
  end
end
