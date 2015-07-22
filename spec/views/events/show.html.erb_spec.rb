require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :description => "Description",
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :organization => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(//)
  end
end
