class Coupons::ApplicationController < ::ApplicationController
  protect_from_forgery with: :exception

  include Coupons::Models
  helper Coupons::ApplicationHelper

  include PageMeta::Helpers
  helper_method :page_meta

  before_action :authorize

  private

  def authorize
    Coupons.configuration.authorizer.call(self)
  end
end
