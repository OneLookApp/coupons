class UpdateCouponRedemptions < ActiveRecord::Migration
  def change
    add_column :coupon_redemptions, :discount, :decimal, :precision => 10, :scale => 2
  end
end