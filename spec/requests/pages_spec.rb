require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /welcome" do
    it "returns http success" do
      get "/pages/welcome"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /configuration" do
    it "returns http success" do
      get "/pages/configuration"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /observation" do
    it "returns http success" do
      get "/pages/observation"
      expect(response).to have_http_status(:success)
    end
  end

end
