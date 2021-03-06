class VolunteersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event
  before_action :set_shift

  def create
    @shift.users << current_user unless @shift.users.include? current_user
    Message.send(current_user.phone_number, 'Thank you for signing up! Text back with CANCEL if your plans change.')
    redirect_to event_path(@event), notice: 'Thank you for signing up! If your plans change, be sure to come back and tell us.'
  end

  def destroy
    @shift.users.delete current_user
    redirect_to event_path(@event), notice: 'Ok, thanks for letting us know.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_shift
    @shift = @event.shifts.find(params[:shift_id])
  end
end
