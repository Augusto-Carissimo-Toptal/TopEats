require 'rails_helper'

RSpec.describe Customer, type: :request do

  describe 'GET /show' do
    before(:each) do
      @address = Address.create(address_field: "Delaware, USA")
      @customer = Customer.create(
        full_name: "John Doe", 
        email: "john.doe@example.com", 
        phone_number: "(543)-907-2356")

      get customer_path(@customer.id)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it "contains expected courier attributes" do
      json_response = JSON.parse(response.body)
      expect(json_response.keys).to match_array(["address", "email", "full_name", "id", "orders", "phone_number"])
    end
  end
end