require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :description => "MyString",
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :organization => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_description[name=?]", "event[description]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_address1[name=?]", "event[address1]"

      assert_select "input#event_address2[name=?]", "event[address2]"

      assert_select "input#event_city[name=?]", "event[city]"

      assert_select "input#event_state[name=?]", "event[state]"

      assert_select "input#event_zip[name=?]", "event[zip]"

      assert_select "input#event_organization_id[name=?]", "event[organization_id]"
    end
  end
end
