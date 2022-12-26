require 'rails_helper'

RSpec.describe "Hardwares", type: :request do
  describe "GET /cpu" do
    it "returns http success" do
      get "/hardware/cpu"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /gpu" do
    it "returns http success" do
      get "/hardware/gpu"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /motherboard" do
    it "returns http success" do
      get "/hardware/motherboard"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /memory" do
    it "returns http success" do
      get "/hardware/memory"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /psu" do
    it "returns http success" do
      get "/hardware/psu"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /disk" do
    it "returns http success" do
      get "/hardware/disk"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /cooler" do
    it "returns http success" do
      get "/hardware/cooler"
      expect(response).to have_http_status(:success)
    end
  end

end
