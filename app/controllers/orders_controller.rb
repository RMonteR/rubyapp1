class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
    @orders = Order.includes(:product).all.where(:user_id => @user)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
