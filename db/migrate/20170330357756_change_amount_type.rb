class ChangeAmountType < ActiveRecord::Migration
  def up
    change_column :coupons, :amount, :decimal, :precision => 10, :scale => 2
  end

  def down
    change_column :coupons, :amount, :integer, null: false, default: 0
  end
end
