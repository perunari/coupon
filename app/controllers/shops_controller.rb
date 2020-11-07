class ShopsController < ApplicationController
  def show
    @shop = Shop.find(params[:id])
    @salecoupons = @shop.salecoupons
  end
end