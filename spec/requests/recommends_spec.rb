require 'rails_helper'

RSpec.describe "Recommends", type: :request do
  describe "GET /recommends" do
    it "works! (now write some real specs)" do
      get recommends_path
      expect(response).to have_http_status(200)
    end
  end
end
