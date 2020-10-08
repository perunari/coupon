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

  def edit
    @salecoupon = Salecoupon.find(params[:id])
  end

  def update
    salecoupon = Salecoupon.find(params[:id])
    salecoupon.update(salecoupon_params)
  end

  def destroy
    salecoupon = Salecoupon.find(params[:id])
    salecoupon.destroy
  end

  private
  def salecoupon_params
    params.require(:salecoupon).permit(:start, :end, :body).merge(shop_id: current_shop.id)
  end

end
