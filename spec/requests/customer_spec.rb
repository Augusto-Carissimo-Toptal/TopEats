require 'rails_helper'

RSpec.describe Customer, type: :request do
  context "GET /index" do
    it "has a 200 status code" do
      get "/customers/index"
      expect(response.status).to eq(200)  
    end
  end
end

RSpec.describe Customer, :type => :controller do
  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :widget => { :full_name => "Any Name" } }
      expect(response.content_type).to eq "text/html; charset=utf-8"
    end

    it "responds to custom formats when provided in the params" do
      post :create, :params => { :widget => { :full_name => "Any Name" }, :format => :json }
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end
  end
end
