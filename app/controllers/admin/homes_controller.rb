class Admin::HomesController < ApplicationController
  def top
    @orders = Order.all
    @orders = Order.all.page(params[:page])
  end
end