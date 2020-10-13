class ShopsController < ApplicationController
  PER = 4
  def show
    @shop = Shop.find(params[:id])
    # @salecoupons = @shop.salecoupons
    @salecoupons = @shop.salecoupons.page(params[:page]).per(PER)
  end
end