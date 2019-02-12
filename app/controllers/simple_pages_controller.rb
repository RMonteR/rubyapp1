class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.last(3)
  end
end
