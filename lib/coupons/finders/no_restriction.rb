module Coupons
  module Finders
    NoRestriction = proc do |code, options = {}|
      coupons = Models::Coupon.where(code: code).all
      coupon = nil
      if coupons.present?
        coupons.each do |selected_coupon|
          coupon = selected_coupon
          break
        end
      end
      coupon
    end
  end
end
