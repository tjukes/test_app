require 'rails_helper'

RSpec.describe "Snurks", type: :request do
  describe "GET /snurks" do
    it "works! (now write some real specs)" do
      get snurks_path
      expect(response).to have_http_status(200)
    end
  end
end
