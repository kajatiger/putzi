require 'rails_helper'

RSpec.describe "Flatmates", type: :request do
  describe "GET /flatmates" do
    it "works! (now write some real specs)" do
      get flatmates_path
      expect(response).to have_http_status(200)
    end
  end
end
