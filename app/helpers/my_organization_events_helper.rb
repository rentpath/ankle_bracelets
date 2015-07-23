module MyOrganizationEventsHelper
  def my_organization_event_form_path(org, event)
    if event.persisted?
      my_organization_my_organization_event_path(org, event)
    else
      my_organization_my_organization_events_path(org)
    end
  end
end
