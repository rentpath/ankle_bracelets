module OrganizationsHelper
  def full_address
    "#{@organization.address1} #{@organization.address2}"
  end

  def city_state_zip
    "#{@organization.city}, #{@organization.state} #{@organization.zip}"
  end
end
