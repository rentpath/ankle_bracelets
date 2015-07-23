module MyOrganizationsHelper
  def my_organization_form_path(organization)
    if organization.persisted?
      my_organization_path(organization)
    else
      my_organizations_path
    end
  end
end
