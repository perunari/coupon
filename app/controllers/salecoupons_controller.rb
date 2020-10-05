class SalecouponsController < ApplicationController
  def index
    @salecoupons = Salecoupon.all
  end

  def new
    @salecoupon = Salecoupon.new
  end

  def create
    Salecoupon.create(salecoupon_params)
  end

  private
  def salecoupon_params
    params.require(:salecoupon).permit(:start, :end, :body)
  end

end
