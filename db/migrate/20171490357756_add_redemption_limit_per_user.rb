class UpdateCouponRedemptions < ActiveRecord::Migration
  def change
    add_column :coupon_redemptions, :redemption_limit_per_user, :integer, default: 1, null: false
  end
end