module MyOrganizationEventsHelper
  def my_organization_event_form_path(event)
    if event.persisted?
      my_organization_my_organization_event_path(event)
    else
      my_organization_my_organization_events_path
    end
  end
end
