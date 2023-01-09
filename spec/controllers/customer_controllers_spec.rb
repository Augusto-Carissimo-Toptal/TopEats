require "rails_helper"

RSpec.describe CustomersController, type: :request do
  let(:valid_attributes) {
    {full_name: 'new user', phone_number: '1122334455', email: 'destroy@toptal.com'}
  }

  let(:invalid_attributes) {
    {full_name:'', phone_number: '', email: ''}
  }

  context "GET /index" do
    it "renders a successful response" do
      Customer.create! valid_attributes
      get customers_url
      expect(response).to be_successful
    end
  end

  context "GET /show" do
    it "renders a successful response" do
      customer = Customer.create! valid_attributes
      get customer_url(customer)
      expect(response).to be_successful
    end
  end

  context "POST /create" do
    context "with valid parameters" do
      it "creates a new Customer" do
        expect {
          post customers_url, params: { customer: valid_attributes }
        }.to change(Customer, :count).by(1)
      end

      it "redirects to the created customer" do
        post customers_url, params: { customer: valid_attributes }
        expect(response).to redirect_to(customer_url(Customer.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Customer" do
        expect {
          post customers_url, params: { custome: invalid_attributes }
        }.to change(Customer, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post customers_url, params: { customer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  context "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {full_name: 'new user', phone_number: '1122334455', email: 'destroy@toptal.com'}
      }

      it "updates the requested customer" do
        customer = Customer.create! valid_attributes
        patch customer_url(customer), params: { customer: new_attributes }
        customer.reload
        expect(response).to have_http_status(:success)
      end

      it "redirects to the customer" do
        customer = Customer.create! valid_attributes
        patch customer_url(customer), params: { customer: new_attributes }
        customer.reload
        expect(response).to have_http_status(:success)
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        customer = Customer.create! valid_attributes
        patch customer_url(customer), params: { customer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested customer" do
      customer = Customer.create! valid_attributes
      expect {
        delete customer_url(customer)
      }.to change(Customer, :count).by(-1)
    end

    it "redirects to the customers list" do
      customer = Customer.create! valid_attributes
      delete customer_url(customer)
      expect(response).to have_http_status(:success)
    end
  end

end