class SalecouponsController < ApplicationController
  def index
    @salecoupons = Salecoupon.all
  end

  def new
    @salecoupon = Salecoupon.new
    # @shop = current_shop.shop
  end

  def create
    Salecoupon.create(salecoupon_params)
  end

  private
  def salecoupon_params
    params.require(:salecoupon).permit(:start, :end, :body).merge(shop_id: current_user.id)
  end

end
