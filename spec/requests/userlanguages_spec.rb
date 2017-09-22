require 'rails_helper'

RSpec.describe "Userlanguages", type: :request do
  describe "GET /userlanguages" do
    it "works! (now write some real specs)" do
      get userlanguages_path
      expect(response).to have_http_status(200)
    end
  end
end
