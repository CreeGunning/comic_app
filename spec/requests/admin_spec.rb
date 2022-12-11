require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /custom_characters" do
    it "returns http success" do
      get "/admin/custom_characters"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show_custom_character" do
    it "returns http success" do
      get "/admin/show_custom_character"
      expect(response).to have_http_status(:success)
    end
  end

end
