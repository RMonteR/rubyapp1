class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.last(3)
  end

  def about
    redirect_to simple_pages_contact_path
  end
end
