class Public::CustomersController < ApplicationController

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    customer = current_customer
    customer.update(customer_params)
    redirect_to customers_my_page_path
  end
  
  def withdraw
    customer = current_customer
    customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会が完了しました。"
    redirect_to root_path
  end
  
end