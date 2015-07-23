class ShiftsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_organization
  before_action :set_event
  def index; end
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.event = @event

    if @shift.save
      redirect_to my_organization_my_organization_event_path(@organization, @event), notice: 'Shift was successfully created'
    else
      render :new
    end
  end

  private
  def set_organization
    @organization = current_user.organizations.find(params[:my_organization_id])
  end

  def set_event
    @event = @organization.events.find(params[:my_organization_event_id])
  end

  def shift_params
    params.require(:shift).permit(:title, :start_time, :end_time, :slots)
  end
end
