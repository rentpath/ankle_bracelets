class VolunteersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event
  before_action :set_shift

  def create
    @shift.users << current_user unless @shift.users.include? current_user
    redirect_to event_path(@event, notice: 'Thank you for signing up!')
  end

  def destroy
    @shift.users.delete current_user
    redirect_to event_path(@event, notice: 'Ok, thanks for letting us know.')
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def set_shift
    @shift = @event.shifts.find(params[:shift_id])
  end
end
