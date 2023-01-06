class CustomersController < ApplicationController

  def index 
    @customers = Customer.all
    
    render json: @customers
  end
  
  def show
    render json: @customer
  end

end
