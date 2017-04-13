class AddIsRevokedToCouponRedemptions < ActiveRecord::Migration

  def change
    add_column :coupon_redemptions, :is_revoked, :decimal, :boolean => 10, :default => 0
  end

end