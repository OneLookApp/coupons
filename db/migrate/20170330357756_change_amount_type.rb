class ChangeAmountType < ActiveRecord::Migration
  def up
    change_column :coupons, :amount, :decimal, null: false, default: 0
  end

  def down
    change_column :coupons, :amount, :integer, null: false, default: 0
  end
end
