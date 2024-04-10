class HomeController < ApplicationController
  def index
  end
  def cart
    @cart_items = current_user.cart_items
  end
  def about
  end
  def contact
  end
end
