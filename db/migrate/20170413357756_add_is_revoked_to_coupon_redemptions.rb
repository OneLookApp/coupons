class AddRedemptionLimitPerUser < ActiveRecord::Migration
  def change
    add_column :coupon_redemptions, :is_revoked, :boolean, default: 0, null: false
  end
end