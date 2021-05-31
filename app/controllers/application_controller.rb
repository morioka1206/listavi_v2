class ApplicationController < ActionController::Base
  def current_shop
    @current_shop ||= Shop.find(session[:shop_id])
  end
end
