class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.last(3)
  end

  def about
    redirect_to simple_pages_contact_path
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end  

  def create
    super
    if @user.persisted?
    end
  end
end
