class AdminController < ApplicationController
  before_action :authorize_admin

  def index
    @total_orders = Order.count
    @orders = Order.paginate(:page=>params[:page], :per_page => 5)
    @cart = current_cart

    all_line_items = LineItem.all
    @grand_orders_total = 0.0
    all_line_items.each do |lineitem|
      @grand_orders_total += lineitem.quantity * lineitem.product.price * Order.count
    end

  end

  def show
  end

  def new
    @cart = current_cart

    if @cart.line_items.empty?
      redirect_to store_url, :notice => "Your cart is empty!"
      return
    end

    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(current_cart)

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to store_url, notice: 'Thank you for your order!' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end
