class EventsController < ApplicationController
  before_action :authenticate_user!, only: :volunteer
  before_action :set_event, only: [:show, :edit, :update, :destroy, :volunteer]

  def index
    @events = Event.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:date, :description, :name, :address1, :address2, :city, :state, :zip, :organization_id)
    end
end
