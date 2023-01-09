class CustomersController < ApplicationController

  before_action :set_customer, only: [:show, :update, :destroy]
  
  def index 
    @customers = Customer.all

    render json: @customers
  end

  def show
    render json: @customer
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_url(@customer), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @customer.update(customer_params)
      render :show, status: :ok, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to widgets_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    def set_customer
      @customer = Customer.find(params[:id])
    end
  
    def customer_params
      params.require(:customer).permit(:full_name,:phone_number, :email)
    end
end
