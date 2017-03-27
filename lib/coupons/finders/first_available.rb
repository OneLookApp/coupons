module Coupons
  module Finders
    FirstAvailable = proc do |code, options = {}|
      coupons = Models::Coupon.where(code: code).all.select(&:redeemable?)
      coupon = nil
      if coupons.present?
        coupons.each do |selected_coupon|
          if selected_coupon.has_available_user_redemptions?(options[:user_id])
            coupon = selected_coupon
            break
          end
        end
      end
      coupon
    end
  end
end
