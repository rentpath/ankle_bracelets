module ShiftsHelper
  def my_organization_event_shift_form_path(org, event, shift)
    if shift.persisted?
      my_organization_my_organization_event_shift_path(org, event, shift)
    else
      my_organization_my_organization_event_shifts_path(org, event)
    end
  end
end
