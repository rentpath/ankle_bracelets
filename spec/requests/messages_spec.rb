require 'rails_helper'

RSpec.describe "Messages", type: :request do
  describe "POST /messages/receive" do
    it "works! (now write some real specs)" do
      post messages_receive_path
      expect(response).to have_http_status(200)
    end
  end
end
