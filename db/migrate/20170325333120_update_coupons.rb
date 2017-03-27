class UpdateCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :min_purchase_price, :decimal, :precision => 10, :scale => 2
    add_column :coupons, :max_discount_price, :decimal, :precision => 10, :scale => 2
  end
end