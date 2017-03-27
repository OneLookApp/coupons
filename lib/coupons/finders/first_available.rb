module Coupons
  module Finders
    FirstAvailable = proc do |code, options = {}|
      coupons = Models::Coupon.where(code: code).all.select(&:redeemable?)
      if coupons.present?
        coupons.each do |coupon|
          if coupon.has_available_user_redemptions?(options[:user_id])
            return coupon
          end
        end
      end
      return nil
    end
  end
end
