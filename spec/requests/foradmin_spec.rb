require 'rails_helper'

RSpec.describe "Foradmins", type: :request do
  describe "GET /manip_users" do
    it "returns http success" do
      get "/foradmin/manip_users"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /manip_hardware" do
    it "returns http success" do
      get "/foradmin/manip_hardware"
      expect(response).to have_http_status(:success)
    end
  end

end
