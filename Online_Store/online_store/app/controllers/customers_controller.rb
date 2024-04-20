# app/controllers/customers_controller.rb

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    end
  def new
    @customers = Customer.new
  end

  def create
    @customers = Customer.new(customer_params)

    if @customers.save
      redirect_to @customers, notice: 'Customer was successfully created.'
    else
      render :new
    end
  end

  def show
    @customers = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer_profile).permit(:name, :address, :phone)
  end
end

