class StudentsController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
  
  def create
  @coupon = Coupon.new
  @coupon.coupon_id = params[:coupon_code]
  @coupon.store_name = params[:store_name]
  @coupon.save
  redirect_to coupon_path(@coupon)
end
end