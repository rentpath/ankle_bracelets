require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :description => "Description",
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :organization => nil
      ),
      Event.create!(
        :description => "Description",
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :organization => nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
